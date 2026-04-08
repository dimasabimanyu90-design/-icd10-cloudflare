// ── PROMPT RULES (server-side) ──
// Browser hanya kirim teks klinis → hemat bandwidth
// Target: max ~9000 token worst case, ~5500 typical case

const PROMPT_BASE = `
## EXTRACTION
Kamu adalah sistem auto-coding ICD-10 dan ICD-9-CM profesional untuk iDRG/JKN Indonesia.
Dari teks klinis berikut, ekstrak semua diagnosis dan prosedur.

DIAGNOSES: ONLY explicitly stated. 1 DU + ALL DS. No dx → diagnoses:[].
PROCEDURES: ONLY explicitly mentioned. None → procedures:[].
LARANGAN MUTLAK: JANGAN koding prosedur tidak eksplisit di teks.
DILARANG asumsikan prosedur dari logika klinis/kelaziman.

LAB vs TTV:
- Nilai lab numerik (Hb, leukosit, GDS, kreatinin, troponin) → WAJIB koding 90.59
- TTV saja (TD, nadi, suhu, RR, SpO2) tanpa nilai lab → JANGAN koding 90.59
- PCR/swab nasofaring → 90.41 | Rapid test → 90.59 | Kultur darah → 90.54

PROSEDUR yang DILARANG tanpa kata kunci eksplisit:
- Foto thorax (87.44): wajib ada "foto thorax/rontgen/x-ray/CXR"
- Nebulisasi (93.94): wajib ada "nebulisasi/nebulizer/inhalasi"
- Oksigen (93.96): wajib ada "oksigen/O2/nasal kanul/masker"
- 90.59: jangan koding jika hanya TTV

CHECKLIST PROSEDUR sebelum finalisasi:
1. Kata kunci prosedur ada di teks? Tidak → hapus
2. Ada nilai lab numerik? Ya → wajib 90.59. Hanya TTV? → hapus 90.59

## DU SELECTION (WHO ICD-10 Vol.2 + ICS iDRG)
Pilih kondisi yang PALING BANYAK menggunakan sumber daya.
- Kondisi operatif = DU | Bangsal/spesialisasi menentukan prioritas
- Gejala integral penyakit → TIDAK dikoding terpisah
- Contoh: bangsal paru + pneumonia + DM → pneumonia=DU
- Contoh: bangsal mata + katarak + DM → katarak=DU
- DM + retinopati/katarak/glaukoma → komplikasi mata=DU, DM=DS

## FIELDS
description: HARUS dari baris terakhir lead_term_path tanpa kode. BUKAN dari memori.
  BENAR I61.0: "Nontraumatic intracerebral haemorrhage in hemisphere, subcortical"
  BENAR O82.1: "Delivery by emergency caesarean section"
  BENAR O43.0: "Placental transfusion syndromes"
  BENAR 74.1: "Low cervical caesarean section"
description_id: terjemahan Indonesia dari official title.
lead_term_path: FORMAT WAJIB newline+dash, BUKAN arrow/slash:
  Lead term
  - subterm 1
  -- subterm 2
  CODE Official title
confidence: integer 1-99.
reasoning: data klinis spesifik dari teks. BUKAN nama kode.
dagger_asterisk: "dagger"|"asterisk"|"none". HANYA jika resmi ditandai †/*.
paired_with: WAJIB diisi. DU→list semua DS. DS→kode DU.
volume1_notes: SELALU []. AI tidak punya akses Vol.1 resmi.

## DAGGER-ASTERISK PAIRS
E11.3†+H36.0* | E11.2†+N08.3* | E11.4†+G63.2* | G20†+F02.3* | G30.-†+F00.*
I10†+I68.1* | B20-B24†+manifestasi* | Keduanya HARUS selalu dikoding.

## ABBREVIATIONS
HT=hypertension | DM=diabetes mellitus | GEA=gastroenteritis akut
ISK=urinary tract infection | KAD=ketoacidosis diabetik | CKD=chronic kidney disease
CHF=congestive heart failure | STEMI=ST-elevation MI | PCI=percutaneous coronary intervention
SNH=stroke non hemoragik (I63.x) | SH=stroke hemoragik (I61.x)
TB/TBC=tuberculosis | PPOK/COPD=chronic obstructive pulmonary disease
APP=appendisitis akut | SC/SCTP=sectio caesarea | PEB=pre-eklamsia berat (O14.1)
IUFD=intrauterine fetal death | TTTS=twin-twin transfusion syndrome
KPD=ketuban pecah dini | HPP=hemorrhage post partum | KET=kehamilan ektopik terganggu
GGK=gagal ginjal kronik (N18.x) | GGA=gagal ginjal akut (N17.x)
ORIF=open reduction internal fixation | ITP=immune thrombocytopenic purpura
SLE=systemic lupus erythematosus | BPH=benign prostatic hyperplasia
intake sulit/kurang/tidak nafsu makan → R63.3 DS

## R CODES
- JANGAN kode R jika diagnosis definitif sudah menjelaskan gejala
- R sebagai DU: valid jika tidak ada diagnosis definitif → WARNING provisional
- Kode definitif BOLEH jika: (1) dokter tulis eksplisit di resume, (2) penunjang konfirmasi,
  (3) patogen spesifik DIKONFIRMASI dokter, (4) tindakan operatif dilakukan

## VALIDATION
Tambahkan validations[] jika ada keraguan/provisional/Rule MB diterapkan.`;

// ── ICS CORE: MB Rules + DU iDRG (selalu aktif, ringkas) ──
const PROMPT_IDRG_CORE = `
## ICS v1 KEMENKES RI — CORE RULES

### DU iDRG: Diagnosis AKHIR/FINAL setelah perawatan selesai.
Prioritas: parah/mengancam jiwa → sumber daya terbesar (operasi>ICU>bangsal)
BUKAN penyakit yang muncul SAAT perawatan. Gunakan diagnosis akhir, bukan masuk.

### RULE MB1-MB5 (reseleksi DU jika dokter tidak sesuai kaidah):
MB1: DU=minor, DS=bermakna+relevan tindakan → reseleksi DS jadi DU.
  Ex: DU=Sinusitis, DS=Ca endoserviks, tindakan=histerektomi → DU=C53.0
MB2: Beberapa kondisi sebagai DU → pilih sesuai alasan utama/spesialisasi.
  Ex: DU=Katarak+Meningitis, Spesialis=Neurologi → DU=G00.3
MB3: DU=gejala dari kondisi DS → reseleksi DS definitif jadi DU.
  Ex: DU=Hematuria, DS=Papillomata buli, prosedur=eksisi → DU=D41.4
MB4: DU=umum, DS=lebih spesifik → pilih spesifik jadi DU.
  Ex: DU=CVA, DS=Perdarahan otak → DU=I61.9
MB5: Diagnosis alternatif → kode gejala. Dua dx bersamaan → PERTAMA ditulis DPJP.
  Ex: "kolesistitis atau pankreatitis" → DU=K81.0
WAJIB WARNING di validations[] jika Rule MB diterapkan.

### PROSEDUR OMIT CODE (tidak dikoding jika diikuti prosedur utama):
Craniotomy, Laparotomy, Laminectomy, Sternotomy, Thoracotomy, Arthrotomy = pendekatan operasi.
KECUALI jika itu SATU-SATUNYA tindakan. Ex: Laparotomy+appendektomi → kode appendektomi saja.

### URUTAN PROSEDUR iDRG: DU dulu → komplikasi → komorbid. Prioritas KLINIS bukan waktu.

### BUKTI KODING VALID: resume medis dokter, laporan radiologi spesialis, laporan PA, lab diinterpretasi dokter.
TIDAK VALID: spekulasi dari resep/obat, kultur/lab tanpa konfirmasi dokter di resume.

### CHECKLIST AKHIR:
□ DU = diagnosis akhir (bukan diagnosis masuk)?
□ Rule MB diperiksa? □ Omit code prosedur dieliminasi?
□ Z37.- ada sebagai DS terakhir pada kasus obstetri?
□ Dagger-asterisk lengkap berpasangan? □ Bukti koding valid?`;

// ── ICS MDC SIRKULASI (MDC 15) ──
const PROMPT_IDRG_SIRKULASI = `
## ICS MDC 15 — SIRKULASI
- Primary PCI → 00.66 + stent (36.07 DES atau 36.06 BMS) + vessel count (00.40 single/00.41 two/00.42 three/00.43 four+)
- Coronary angiography → 88.55 (single) atau 88.56 (two catheters)
- VF + penyakit jantung struktural → I49.00 (IM) | VF idiopatik/Brugada → I49.01 (IM) | VF unspec → I49.09 (IM)
- PHT (I27.0) + HF (I50.9) → koding TERPISAH, tidak ada kode kombinasi
- Cardiac arrest penyebab diketahui → penyebab=DU, I46.0=DS
- Varises esofagus + sirosis → K74.6=DU + I98.2* (tanpa perdarahan) atau I98.3* (dengan perdarahan)
- DVT ekstremitas bawah → I80.2
- Infective endocarditis → I33.0=DU, tambah kode katup jika diketahui (I39.x)`;

// ── ICS MDC SARAF (MDC 11) ──
const PROMPT_IDRG_SARAF = `
## ICS MDC 11 — SARAF
- Stroke iskemik + trombolitik → tambah 99.10 sebagai prosedur
- Epilepsi + cedera saat serangan → cedera=DU, epilepsi=DS + kode eksternal
- Alzheimer <65th → G30.0 | ≥65th → G30.1 | tidak diketahui → G30.9
- Alzheimer + demensia → G30.-† + F00.* (WAJIB keduanya)
- Sleep apnea ada penyebab spesifik (hipertrofi tonsil dll) → penyebab=DU, G47.3=DS
- Snoring primer → R06.5 (bukan G47.3)
- UPPP → 3 kode: 27.79 + 27.69 + 29.4
- Parkinsonism akibat obat → G21.1 + kode obat (T43.4 dll), BUKAN G20
- Status epilepticus → G41.- (BUKAN G40)
- CVA umum + perdarahan spesifik → Rule MB4: gunakan I61.x atau I63.x spesifik
- Sekuel SSP (G09) = kode opsional tambahan, BUKAN kode utama`;

// ── ICS MDC OBSTETRI EXTRA (MDC 24 tambahan) ──
const PROMPT_IDRG_OBSTETRI_EXT = `
## ICS MDC 24 — OBSTETRI EXTRA
- Penyulit persalinan → penyulit=DU, O80-O84=DS (metode persalinan)
- Tidak ada penyulit → O80-O84 boleh sebagai DU
- Z37.- = WAJIB DS terakhir, TIDAK BOLEH sebagai DU
- PEB ringan/tanpa pemberatan → O14.0 | PEB berat/dengan pemberatan/impending → O14.1
- SC + sterilisasi tuba → tambah 66.39 | SC + B-Lynch → tambah 69.99
- Abortus + kuretase → 69.02
- KPD → O42.- | Malpresentasi sebelum persalinan → O32.- | + obstructed labour → O64.-
- Hyperemesis + gangguan metabolik/dehidrasi → O21.1
- DM pre-existing tipe 1 → O24.0 | tipe 2 → O24.1 | gestasional → O24.4
- Puerperal sepsis → O85 (BUKAN A41.x)
- Varises postcoital (bukan luka) → N93.01 (IM) | Contact bleeding → N93.00 (IM)`;

// ── ICS MDC DIGESTIF + HEPATOBILIAR (MDC 16-17) ──
const PROMPT_IDRG_DIGESTIF = `
## ICS MDC 16-17 — PENCERNAAN & HEPATOBILIAR
- Ileus obstruksi + konstipasi → JANGAN kode konstipasi terpisah (sudah include)
- K29.0 (acute haemorrhagic gastritis) → HANYA jika terkonfirmasi endoskopi
- Appendisitis + perforasi + peritonitis → K35.2 | + abses → K35.3
- Sirosis + varises esofagus berdarah → K74.6=DU + I98.3*=DS
- Sirosis + varises esofagus tidak berdarah → K74.6=DU + I98.2*=DS
- Kolesistektomi laparoskopik → 51.22 | terbuka → 51.23`;

// ── ICS MDC INFEKSI (MDC 28) ──
const PROMPT_IDRG_INFEKSI = `
## ICS MDC 28 — INFEKSI & PARASIT
- HIV + infeksi oportunistik → B20-B24=DU, manifestasi=DS
- HIV tanpa gejala → Z21
- Malaria → B50-B53 spesifik (HINDARI B54 unspecified)
- Sepsis → A41.- | Puerperal sepsis → O85 (BUKAN A41.x)
- TB paru terkonfirmasi smear → A15.0 | histologi → A15.3 | tidak terkonfirmasi → A16.2`;

// ── ICS MDC ONKOLOGI (MDC 34) ──
const PROMPT_IDRG_ONKO = `
## ICS MDC 34 — NEOPLASMA
- Rawat untuk metastasis → metastasis=DU, primer=DS
- Kemoterapi/radioterapi rawat inap → Z51.1/Z51.0 boleh sebagai DU
- ECT (Electroconvulsive Therapy) → 94.27 WAJIB jika dilakukan (mempengaruhi DRG grouper)`;

const PROMPT_OBSTETRI = `
## OBSTETRIC RULES
O00: .1=tubal | .2=ovarian | .0=abdominal. Ruptur→+O08.1 DS.
O02.1=missed abortion. +O08.9 DS. BUKAN O03.x.
O03-O07: COMPLETE(post-kuret): .5=infeksi|.6=perdarahan|.9=tanpa komplikasi
         INCOMPLETE(pre-kuret): .0=infeksi|.1=perdarahan|.4=tanpa komplikasi
         +O08.x DS: O08.0=infeksi|O08.1=perdarahan|O08.3=syok|O08.9=unspec
O60 HANYA jika onset persalinan SPONTAN <37 minggu:
  Kata kunci O60: "mulas sendiri/kontraksi spontan/his spontan/pembukaan spontan"
  Kata kunci O82: "SC ai/SC atas indikasi/SCTP ai/elektif/emergency SC"
  SC tanpa onset spontan eksplisit → SELALU O82.x
O82: SC tanpa onset spontan: O82.0=elektif | O82.1=darurat | O82.2=unspecified
  SC darurat (TTTS/IUFD/fetal distress) → O82.1 DU
  SC elektif (bekas SC stabil) → O82.0 DU
O34.2=bekas SC → WAJIB DS jika ada riwayat SC.
TTTS→O43.0† DS | IUFD→O36.4 DS | O30.0 (gemelli) → TIDAK dikoding terpisah.
Urutan SC darurat+TTTS+IUFD: O82.1→O43.0†→O36.4→O34.2→O99.0(Hb<10)→Z37.x
Urutan partus spontan preterm+TTTS+IUFD: O60.1→O43.0†→O36.4→O34.2→O99.0→Z37.x
Z37 WAJIB DS terakhir: .0=single live|.1=single still|.2=twins live|.3=one live one still|.4=twins still
O99.0: HANYA jika Hb<10 di teks. TD≥140/90+hamil→O13/O14. GDS>200+hamil→O24.

## PROSEDUR OBSTETRI
SC/SCTP → 74.1 "Low cervical caesarean section" (BUKAN O82.x sebagai prosedur)
Kistektomi ovarium (kista dibuang, ovarium tetap) → 65.29
Oophorectomy unilateral → 65.39 | bilateral → 65.51
Salpingo-oophorectomy unilateral → 65.49 | bilateral → 65.61
CHECKLIST: ada Z37.x? Tidak → TAMBAHKAN sekarang.`;

const PROMPT_PROSEDUR = `
## ICD-9-CM PROCEDURE RULES
Koding HANYA jika DISEBUT EKSPLISIT di teks:

OPERATIF:
- Ventilator→96.70 | Intubasi→96.04 | Bronkoskopi→33.22 | Trakeostomi→31.21
- PCI→00.66 | DES stent→36.07 | BMS stent→36.06
- Primary PCI → WAJIB: 00.66 + 36.07 + vessel count (00.40/00.41/00.42/00.43)
- EKG disebut→89.52 | Troponin (+)→90.59 | Echo disebut→88.72 | Foto thorax→87.44
- Coronary angiography→88.55/88.56

DIAGNOSTIK:
- Foto thorax→87.44 | CT kepala→87.03 | CT thorax→87.41 | CT abdomen→88.01
- MRI otak→88.91 | Echo→88.72 | USG abdomen→88.76 | USG obstetri→88.78
- EKG→89.52 | EEG→89.14 | Spirometri→89.37 | Gastroskopi→44.13 | Kolonoskopi→45.13

LAB:
- Nilai lab numerik/darah rutin→90.59 | PCR/swab/BTA sputum→90.41
- Kultur darah→90.54 | Kultur urin→90.29 | AGD→89.65 | Urinalisis→91.31 | PA→91.49
- Rapid test/antigen/serologi→90.59

DILARANG: antibiotik IV, infus obat/cairan = BUKAN kode prosedur.
Nebulisasi→93.94 (BUKAN 93.91). 90.59 jika lab numerik; JANGAN jika hanya TTV.
OMIT CODE: craniotomy/laparotomy/laminectomy sebagai pendekatan = tidak dikoding jika ada prosedur utama.`;

const PROMPT_SPESIALIS = `
## SPESIALIS

MUSCULOSKELETAL: site digit wajib: 0=multi,1=shoulder,2=elbow,3=wrist,4=hand,5=hip,6=knee,7=ankle,8=other,9=unspec
ORIF femur→79.35 | ORIF tibia/fibula→79.36 | THR→81.54 | TKR→81.55
B95-B96: additional code (bukan dagger/asterisk)

RESPIRATORY:
SpO2<95% akut→J96.0 DS | kronik→J96.1 DS | unspec→J96.9 DS

PNEUMONIA:
J18.1=bronchopneumonia (tanpa organisme spesifik)
J15.x HANYA jika kuman spesifik DIKONFIRMASI dokter di resume medis (bukan hanya hasil lab)
Kultur positif tanpa konfirmasi dokter → tetap J18.x

APPENDIX: K35.2=perforasi+peritonitis | K35.3=perforasi+abses | K35.8=lain | K37=unspec

EYE: Fakoemulsifikasi+IOL→13.72 | tanpa IOL→13.41 | ECCE→13.71
Laser fotokoagulasi retina→14.24 (BUKAN 14.25) | Trabekulotomi→12.54
Retinopati DM: E11.3†+H36.0* (wajib keduanya)
H72 wajib digit: H72.0=central|H72.1=attic|H72.2=marginal|H72.9=unspec

SPECIFICITY:
E10=DM type1 | E11=DM type2 | WAJIB 4th digit (.0=coma/.1=KAD/.2=renal/.3=ophthalmic/.4=neuro/.5=PVD/.9=tanpa komplikasi)
"Riwayat DM" saja → E11.9 | GDS tinggi tanpa komplikasi organ → E11.9
I61 wajib digit: I61.0=subcortical|I61.1=kortikal|I61.3=batang otak|I61.4=serebelum|I61.9=unspec
I63 wajib digit. Fraktur: wajib lokasi+open/closed.`;

const PROMPT_TRAUMA = `
## TRAUMA
External cause: V01-V99=transport | W=falls | X=environmental | X60-X84=self-harm
S codes: wajib lokasi anatomi + open/closed. Multiple trauma → kode tiap injury terpisah.
Epilepsi + cedera saat serangan → cedera=DU, epilepsi=DS + kode eksternal (ICS).`;

const PROMPT_JSON = `Return ONLY valid JSON:
{"summary","du_reasoning","validations":[{"type","message"}],"diagnoses":[{"role","code","dagger_asterisk","description","description_id","category","confidence","lead_term_path","volume1_notes":[{"type","text"}],"paired_with","reasoning"}],"procedures":[{"code","description","description_id","category","confidence","lead_term_path","volume1_notes","reasoning"}]}`;

// ── DETECT CASE TYPE & BUILD PROMPT ──
function buildPrompt(clinicalText, langInstruction) {
  const t = clinicalText.toLowerCase();

  const isObstetri  = /hamil|partus|sc\b|sectio|caesar|obstet|gravida|trimester|janin|fetus|persalinan|nifas|postpartum|abortus|keguguran|ektopik|gemelli|kembar|kista ovarium|kistektomi|iufd|ttts|ketuban|peb|eklampsia|hpp|g\dpa|g\dp\da/.test(t);
  const isTrauma    = /fraktur|fracture|trauma|kecelakaan|luka|vulnus|dislokasi|orif|amputasi|combustio|luka bakar/.test(t);
  const isSpesialis = /dm|diabetes|stroke|infark|stemi|pci|pneumonia|asma|ppok|copd|appendis|katarak|glaukoma|retinopati|gout|artritis|spondil|hernia|jantung|cardiac|hepatitis|sirosis|gagal ginjal|ckd|aki|leukemia|limfoma|tumor|kanker|neoplasm|karsinoma|tiroid|tb\b|tuberkulosis|alzheimer|epilep|sleep apnea/.test(t);
  const isSirkulasi = /jantung|cardiac|stemi|nstemi|pci|ptca|cabg|stent|aritmia|fibrilasi|ventrikel|atrial|infark|koroner|angiografi|kateterisasi|dvt|emboli|varises|sirosis|hipertensi pulmonal/.test(t);
  const isSaraf     = /stroke|snh\b|sh\b|cva|tia|epilep|kejang|alzheimer|parkinson|meningitis|ensefalitis|hidrocephalus|sleep apnea|neuropati|miopati|paralisis/.test(t);
  const isDigestif  = /sirosis|varises esofag|appendis|ileus|kolestisit|kolelitias|pankreatit|gastritis|perforasi|hematemes|melena|laparotom|kolesistektom/.test(t);
  const isInfeksi   = /hiv|aids|malaria|tb\b|tuberkulosis|sepsis|puerperal|oportunistik/.test(t);
  const isOnko      = /tumor|kanker|neoplasm|karsinoma|kemoterapi|radioterapi|metastasis|limfoma|leukemia|ect\b|electroconvulsive/.test(t);

  // BASE + IDRG_CORE selalu aktif
  let rules = PROMPT_BASE + '\n' + PROMPT_IDRG_CORE + '\n' + PROMPT_PROSEDUR;

  // MDC-specific ICS rules
  if (isSirkulasi) rules += '\n' + PROMPT_IDRG_SIRKULASI;
  if (isSaraf)     rules += '\n' + PROMPT_IDRG_SARAF;
  if (isDigestif)  rules += '\n' + PROMPT_IDRG_DIGESTIF;
  if (isInfeksi)   rules += '\n' + PROMPT_IDRG_INFEKSI;
  if (isOnko)      rules += '\n' + PROMPT_IDRG_ONKO;

  // Specialty rules
  if (isObstetri)  rules += '\n' + PROMPT_OBSTETRI + '\n' + PROMPT_IDRG_OBSTETRI_EXT;
  if (isSpesialis) rules += '\n' + PROMPT_SPESIALIS;
  if (isTrauma)    rules += '\n' + PROMPT_TRAUMA;

  return rules + '\n\n' + langInstruction + '\n\nTEKS KLINIS:\n' + clinicalText + '\n\n' + PROMPT_JSON;
}

// ── D1 LOOKUP ──
async function enrichWithD1(items, db) {
  if (!db || !items || items.length === 0) return items;
  try {
    const codes = items.map(i => i.code).filter(Boolean);
    if (codes.length === 0) return items;
    const placeholders = codes.map(() => '?').join(',');
    const result = await db.prepare(
      `SELECT code, path, vol1 FROM icd9_paths WHERE code IN (${placeholders})`
    ).bind(...codes).all();
    const map = {};
    if (result.results) {
      for (const row of result.results) {
        map[row.code] = { path: row.path, vol1: row.vol1 ? JSON.parse(row.vol1) : [] };
      }
    }
    return items.map(item => {
      const entry = map[item.code];
      if (entry) {
        return { ...item, lead_term_path: entry.path || item.lead_term_path,
          volume1_notes: (entry.vol1 && entry.vol1.length > 0) ? entry.vol1 : [] };
      }
      return { ...item, volume1_notes: [] };
    });
  } catch(e) {
    console.error('D1 lookup error:', e.message);
    return items.map(i => ({ ...i, volume1_notes: [] }));
  }
}

export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  const MODELS = ["llama-3.3-70b-versatile"];
  const API_KEYS = [
    context.env.GROQ_API_KEY,
    context.env.GROQ_API_KEY_2,
    context.env.GROQ_API_KEY_3,
  ].filter(Boolean);

  if (API_KEYS.length === 0) {
    return new Response(JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan" }), { status: 500, headers: corsHeaders });
  }

  try {
    const body = await context.request.json();
    const clinicalText    = body.clinicalText || '';
    const langInstruction = body.langInstruction || '';
    const fullPrompt = buildPrompt(clinicalText, langInstruction);

    const model = MODELS[0];
    let lastError = null;

    for (let keyIdx = 0; keyIdx < API_KEYS.length; keyIdx++) {
      const key = API_KEYS[keyIdx];
      const response = await fetch("https://api.groq.com/openai/v1/chat/completions", {
        method: "POST",
        headers: { "Content-Type": "application/json", "Authorization": `Bearer ${key}` },
        body: JSON.stringify({
          model, temperature: 0.1, max_tokens: 4000,
          messages: [{ role: "user", content: fullPrompt }]
        })
      });

      const data = await response.json();

      if (response.status === 429) {
        const retryAfter = response.headers.get("x-ratelimit-reset-requests") || response.headers.get("retry-after");
        let waitMs = 8000;
        if (retryAfter) {
          if (retryAfter.endsWith('ms'))     waitMs = parseInt(retryAfter);
          else if (retryAfter.endsWith('s')) waitMs = parseFloat(retryAfter) * 1000;
          else                               waitMs = parseFloat(retryAfter) * 1000;
          waitMs = Math.min(waitMs, 15000);
        }
        lastError = `Rate limit — key ${keyIdx+1}, tunggu ${Math.round(waitMs/1000)}s`;
        if (keyIdx < API_KEYS.length - 1) await new Promise(r => setTimeout(r, waitMs));
        continue;
      }

      if (data.error) {
        lastError = `Groq (key${keyIdx+1}/${model}): ${data.error.code} - ${data.error.message}`;
        if (response.status !== 429 && response.status !== 503) {
          return new Response(JSON.stringify({ error: lastError }), { status: 500, headers: corsHeaders });
        }
        continue;
      }

      if (!data.choices || data.choices.length === 0) {
        return new Response(JSON.stringify({ error: "Tidak ada respons dari Groq. Coba lagi." }), { status: 500, headers: corsHeaders });
      }

      const text = (data.choices[0].message.content || "")
        .replace(/```json\s*/gi, "").replace(/```\s*/g, "").trim();

      const quota = {
        model, api_key_used: `key_${keyIdx+1}`,
        rpm_limit:         response.headers.get("x-ratelimit-limit-requests")     || null,
        rpm_remaining:     response.headers.get("x-ratelimit-remaining-requests") || null,
        rpm_reset:         response.headers.get("x-ratelimit-reset-requests")     || null,
        tpm_limit:         response.headers.get("x-ratelimit-limit-tokens")       || null,
        tpm_remaining:     response.headers.get("x-ratelimit-remaining-tokens")   || null,
        tpm_reset:         response.headers.get("x-ratelimit-reset-tokens")       || null,
        tokens_used:       data.usage ? data.usage.total_tokens       : null,
        prompt_tokens:     data.usage ? data.usage.prompt_tokens      : null,
        completion_tokens: data.usage ? data.usage.completion_tokens  : null,
      };

      let enrichedText = text;
      try {
        const parsed = JSON.parse(text);
        if (parsed.procedures && parsed.procedures.length > 0) {
          const db = context.env.ICD9_DB || null;
          if (db) parsed.procedures = await enrichWithD1(parsed.procedures, db);
          enrichedText = JSON.stringify(parsed);
        }
      } catch(e) {}

      return new Response(JSON.stringify({ text: enrichedText, model_used: model, quota }), { status: 200, headers: corsHeaders });
    }

    return new Response(JSON.stringify({ error: `Semua API key sedang rate limit. Tunggu 1-2 menit. (${lastError})` }), { status: 429, headers: corsHeaders });

  } catch (err) {
    return new Response(JSON.stringify({ error: `Server error: ${err.message}` }), { status: 500, headers: corsHeaders });
  }
}

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: { "Access-Control-Allow-Origin": "*", "Access-Control-Allow-Headers": "Content-Type", "Access-Control-Allow-Methods": "POST, OPTIONS" }
  });
}
