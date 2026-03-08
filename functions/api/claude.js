// ── PROMPT RULES (server-side, tidak dikirim dari browser) ──
// Browser hanya kirim teks klinis → hemat ~6000 token per request

const PROMPT_BASE = `
## EXTRACTION
Kamu adalah sistem auto-coding ICD-10 dan ICD-9-CM profesional.
Dari teks klinis berikut, ekstrak semua diagnosis dan prosedur.

- Diagnoses: ONLY explicitly stated. 1 DU + ALL DS. No dx → diagnoses:[] unless strong objective evidence.
- Procedures: ONLY explicitly mentioned in text. None → procedures:[]. Code ALL if multiple.
  LARANGAN MUTLAK: JANGAN koding prosedur yang tidak disebut secara eksplisit di teks input.
  DILARANG mengasumsikan prosedur berdasarkan logika klinis, kelaziman, atau kebiasaan.
  DILARANG koding foto thorax jika teks tidak menyebut "foto thorax/rontgen/chest x-ray/x-ray".
  DILARANG koding nebulisasi jika teks tidak menyebut "nebulisasi/nebulizer/inhalasi".
  DILARANG koding kultur sputum jika teks tidak menyebut "kultur sputum/kultur dahak/sputum culture".
  WAJIB koding 90.59 jika ada nilai lab numerik di teks (Hb, leukosit, GDS, kreatinin, troponin, dll) — nilai numerik = bukti pemeriksaan dilakukan.
  DILARANG koding 90.59 hanya karena ada nilai TTV — TTV BUKAN pemeriksaan lab:
  TTV (bukan lab): TD/tekanan darah, nadi/HR, suhu/temperature, RR/laju napas, SpO2/saturasi
  Contoh SALAH: "TD 200/120" → JANGAN koding 90.59 (TD = TTV, bukan lab)
  Contoh BENAR: "Hb 9,1 / leukosit 15.000 / GDS 380 / troponin I (+)" → WAJIB koding 90.59
  DILARANG koding oksigen (93.96) jika teks tidak menyebut "oksigen/O2/nasal kanul/masker O2".
  BOLEH koding hanya jika KATA KUNCI prosedur ADA secara eksplisit di teks input.
  Contoh BENAR: teks menyebut "dilakukan foto thorax" → koding 87.44
  Contoh SALAH: teks menyebut "sesak napas" → JANGAN koding 93.96 atau 87.44
  Contoh BENAR: teks menyebut nilai lab numerik (Hb 9,1 / leukosit 15.000 / GDS 380 / kreatinin 2,1) → WAJIB koding 90.59
  Contoh BENAR: teks menyebut "PCR", "rapid test", "rapid antigen", "swab" → BOLEH koding 90.59 atau 90.41
  Contoh SALAH: teks hanya "pasien anemia" tanpa nilai numerik → JANGAN koding 90.59
  PCR/swab nasofaring/tenggorok → 90.41 | PCR darah → 90.59 | Rapid test apapun → 90.59
  Nilai lab numerik di teks = bukti pemeriksaan dilakukan → WAJIB koding 90.59
  Sebelum finalisasi prosedur — WAJIB cek 2 hal:
  1. Setiap prosedur dikoding: apakah kata kuncinya ADA di teks? Tidak ada → hapus.
  2. Apakah ada nilai lab numerik di teks (Hb, leukosit, GDS, kreatinin, dll)? Ada → WAJIB tambah 90.59.
     HANYA nilai TTV di teks (TD, nadi, suhu, RR, SpO2) tanpa nilai lab → JANGAN koding 90.59 sama sekali.
     Cek: ada Hb/leukosit/GDS/kreatinin/troponin/enzim/elektrolit? Tidak ada → hapus 90.59 dari output.

## DU SELECTION RULES (WHO ICD-10 Vol.2)
### Kriteria 1 — RESOURCE/SUMBER DAYA TERBESAR
Pilih kondisi yang paling banyak menyita sumber daya (waktu perawatan, tindakan, biaya).
### Kriteria 2 — KAIDAH KODING WHO ICD-10 Vol.2
- Gejala yang merupakan bagian integral dari penyakit TIDAK dikoding terpisah.
- Kondisi yang ditindaklanjuti operatif = DU.
### Kriteria 3 — KONTEKS KLINIS
Perhatikan: tindakan apa yang dilakukan? Bangsal apa? Spesialis apa?
CONTOH: pasien di bangsal paru dengan pneumonia + DM → pneumonia=DU
CONTOH: pasien di bangsal mata dengan katarak + DM → katarak=DU
CONTOH: pasien di ICU dengan sepsis + DM + HT → sepsis=DU
### Khusus DM + komplikasi mata:
Jika ada retinopati/katarak/glaukoma + DM → komplikasi mata=DU, DM=DS

## FIELDS
- description: PROSES WAJIB — JANGAN isi description dari memori/nama populer kode.
  LANGKAH: (1) Tulis lead_term_path lengkap dulu → (2) Ambil baris TERAKHIR lead_term_path → (3) Hapus kode di depan → (4) Hasil = description.
  description = baris final lead_term_path TANPA kode. Tidak boleh berbeda satu kata pun.
  WAJIB konsisten: description = baris final lead_term_path tanpa kode di depan.

  CONTOH BENAR vs SALAH:
  I61.0: description="Nontraumatic intracerebral haemorrhage in hemisphere, subcortical" ✓ | SALAH: "Subcortical hemorrhage" ✗
  O60.1: description="Preterm labour with preterm delivery" ✓ — HANYA jika onset spontan
  O82.1: description="Delivery by emergency caesarean section" ✓ — SC darurat tanpa onset spontan
  O43.0: description="Placental transfusion syndromes" ✓ | SALAH: "Twin-to-twin transfusion syndrome" ✗
  O36.4: description="Maternal care for intrauterine death" ✓ | SALAH: "Intrauterine death of one or more fetuses" ✗
  O34.2: description="Maternal care due to uterine scar from previous surgery" ✓ | SALAH: "Previous caesarean section" ✗
  O99.0: description="Anaemia complicating pregnancy, childbirth and the puerperium" ✓ | SALAH: "Anaemia during pregnancy" ✗
  74.1:  description="Low cervical caesarean section" ✓ | SALAH: "Operasi caesar serviks rendah" ✗
  65.29: description="Other local excision or destruction of ovary" ✓ | SALAH: "Kistektomi bilateral" ✗
  DILARANG: mengarang nama kode dari ingatan — HARUS dari baris final lead_term_path yang ditulis sendiri.

- description_id: Indonesian translation of official title.
- lead_term_path: STRING, SATU kode saja. Hierarki Vol.3 lengkap. WAJIB format PERSIS seperti contoh.
  FORMAT WAJIB — SETIAP LEVEL HARUS NEWLINE + DASH, BUKAN ARROW:
  Lead term (tanpa dash)
  - subterm level 1
  -- subterm level 2
  --- subterm level 3 (jika ada)
  CODE Official title

  DILARANG KERAS:
  ❌ Arrow: "Delivery→Caesarean section→Emergency O82.1"
  ❌ Slash: "Delivery / Caesarean / Emergency O82.1"
  ❌ Skip level | ❌ Baris final hilang | ❌ Subterm kosong

  CONTOH BENAR ICD-10:
  Delivery
  - caesarean section
  -- emergency O82.1
  O82.1 Delivery by emergency caesarean section

  Infarction
  - myocardial
  -- acute
  --- inferior I21.1
  I21.1 Acute transmural myocardial infarction of inferior wall

  CONTOH BENAR ICD-9-CM:
  Caesarean section
  - low cervical 74.1
  74.1 Low cervical caesarean section

  Excision
  - ovary
  -- local
  --- other 65.29
  65.29 Other local excision or destruction of ovary

- confidence: integer 1-99. WAJIB diisi.
- reasoning: data klinis SPESIFIK dari teks (nilai lab, gejala, tindakan). DILARANG ulang nama kode.
  SALAH: "O99.0 karena anemia kehamilan" | BENAR: "Hb 9,1 g/dL (<10), pasien hamil"
- dagger_asterisk: "dagger"|"asterisk"|"none". ONLY if officially marked †/* in Vol.1.
  O43.0 = DS biasa (bukan dagger) | O36.4 = DS biasa | O34.2 = DS biasa | O99.0 = DS biasa
  DILARANG mark dagger kecuali ada pasangan asterisk resmi (E11.3†+H36.0*, G20†+F02.3*, dll)
- paired_with: kode DU untuk semua DS, kode DS untuk DU. WAJIB diisi — jangan "none".
  DU paired_with = list semua kode DS | DS paired_with = kode DU
  Contoh: O82.1 DU → paired_with: ["O43.0","O36.4","O34.2","O99.0","Z37.3"]
  Contoh: O43.0 DS → paired_with: ["O82.1"]
- volume1_notes: SELALU isi dengan array kosong [].
  DILARANG KERAS mengisi volume1_notes dengan apapun — AI tidak punya akses Vol.1 resmi.
  WAJIB: volume1_notes: [] untuk semua kode tanpa pengecualian.

## VOL.3 INDEX RULES
- Use Vol.3 Alphabetical Index to find lead term → subterms → code.
- Lead term = noun (disease/condition), not adjective.
- Always verify code in Vol.1 Tabular List.

## INCLUDES/EXCLUDES
- INCLUDES: kondisi listed sebagai Includes → TIDAK dikoding terpisah, tulis di volume1_notes.
- EXCLUDES: kondisi Excludes → WAJIB dikoding terpisah + catat di volume1_notes.

## DAGGER-ASTERISK PAIRS — SELALU code keduanya
- E11.3† + H36.0* (DM retinopathy)
- E11.2† + N08.3* (DM nephropathy)
- E11.4† + G63.2* (DM neuropathy)
- G20† + F02.3* (Parkinson dementia)
- I10† + I68.1* (HT cerebrovascular)
- B20-B24† + kode manifestasi* (HIV)
Aturan: dagger (†) = DU/etiologi, asterisk (*) = DS/manifestasi. Keduanya HARUS ada.

## VALIDATION
Tambahkan validations[] jika ada keraguan atau kondisi provisional.
WARNING provisional jika diagnosis tidak terkonfirmasi pemeriksaan penunjang.

## ABBREVIATIONS
UMUM: HT/hipertensi=hypertension | DM=diabetes mellitus | DM2=DM type 2 | DM1=DM type 1
  GEA=gastroenteritis akut | ISPA=infeksi saluran pernapasan atas | ISK=infeksi saluran kemih
  KAD=ketoasidosis diabetik | CKD=chronic kidney disease | AKI=acute kidney injury
  CHF=congestive heart failure | CAD=coronary artery disease | HHD=hypertensive heart disease
  AF/AF RVR=atrial fibrilasi | VT=ventrikel takikardi | VF=ventrikel fibrilasi
  SVT=supraventricular tachycardia | AVB=atrioventricular block | LBBB/RBBB=bundle branch block
  STEMI=ST-elevation myocardial infarction | NSTEMI=non-ST elevation MI | UAP=unstable angina pectoris
  PCI=percutaneous coronary intervention | PTCA=percutaneous transluminal coronary angioplasty
  CABG=coronary artery bypass graft | IHD=ischemic heart disease
NEUROLOGI: SNH=stroke non hemoragik (I63.x) | SH=stroke hemoragik (I61.x)
  TIA=transient ischemic attack (G45.9) | SOL=space occupying lesion
  GBS=Guillain-Barré syndrome | MG=miastenia gravis | EP=epilepsi
PERNAPASAN: TB/TBC=tuberculosis paru | OAT=obat anti tuberkulosis
  PPOK/COPD=penyakit paru obstruktif kronik | CAP=community acquired pneumonia
  HAP=hospital acquired pneumonia | efusi pleura=pleural effusion
  ARDS=acute respiratory distress syndrome | gagal napas=respiratory failure
DIGESTIF: APP=appendisitis akut | ileus obs=ileus obstruktif | perfo=perforasi
  sirosis=liver cirrhosis | kolelitiasis=cholelithiasis | pankreatitis=pancreatitis
OBSTETRI: SC/SCTP=sectio caesarea | PEB=pre-eklamsia berat (O14.1)
  HPP=hemorrhage post partum | KPD=ketuban pecah dini | IUFD=intrauterine fetal death
  TTTS=twin-twin transfusion syndrome | gemelli=twins | partus prematurus=preterm labour
  KET=kehamilan ektopik terganggu | ai=atas indikasi | G_P_A_=gravida_para_abortus_
  bekas SC=previous caesarean scar | kista ovarium=ovarian cyst | kistektomi=cystectomy
GINJAL: GGK=gagal ginjal kronik (N18.x) | GGA=gagal ginjal akut (N17.x)
  BPH=benign prostatic hyperplasia | urolitiasis=urolithiasis
BEDAH: ORIF=open reduction internal fixation | fx=fraktur | HNP=hernia nucleus pulposus
ENDOKRIN: krisis tiroid=thyroid storm | DKA=diabetic ketoacidosis | gout=gout arthritis
DARAH: ITP=immune thrombocytopenic purpura | SLE=systemic lupus erythematosus
  sepsis=sepsis | syok sepsis=septic shock
intake sulit/intake kurang/sulit makan/tidak nafsu makan → R63.3 DS

## R CODES
- Do NOT code R if definitive dx explains symptom.
- R as DU: valid if no definitive dx → WARNING provisional.
- DM→no R73 | fever unknown→R50.9 DU+WARNING | post-op fever→R50.9 DS.

## KAPAN PAKAI R CODE vs DIAGNOSIS DEFINITIF
Kode definitif (J/K/I/dll) BOLEH jika ADA salah satu:
  1. Dokter tulis diagnosis eksplisit di resume/SOAP
  2. Penunjang konfirmasi (foto thorax infiltrat→pneumonia | CT scan→stroke)
  3. Patogen/kuman spesifik disebut ("PCR COVID-19+"→U07.1 | "kultur Klebsiella"→J15.0)
  4. Tindakan operatif dilakukan (appendektomi→K35.x | SC elektif→O82.0 | SC darurat→O82.1)
Jika HANYA gejala tanpa konfirmasi → R code + WARNING provisional:
  Demam+batuk+pilek+PCR+(tanpa nama patogen) → R50.9 DU+WARNING | R05 DS — BUKAN J22
  Nyeri dada tanpa EKG/troponin konfirmasi → R07.4 — BUKAN I20/I21
  Sesak tanpa konfirmasi → R06.0 — BUKAN J96
  Kejang tanpa konfirmasi → R56.8 — BUKAN G40
  Penurunan kesadaran tanpa CT → R41.3/R55 — BUKAN S06/G93`;

const PROMPT_OBSTETRI = `
## OBSTETRIC RULES
O00: .1=tubal | .2=ovarian | .0=abdominal. Ruptur→+O08.1 DS.
O02.1=missed abortion (fetal death, NO expulsion). +O08.9 DS. BUKAN O03.x.
O03-O07 4th digit — tentukan COMPLETE vs INCOMPLETE dulu:
  COMPLETE (post-kuret): .5=infeksi | .6=perdarahan | .7=emboli | .9=tanpa komplikasi
  INCOMPLETE (pre-kuret): .0=infeksi | .1=perdarahan | .2=emboli | .4=tanpa komplikasi
  +O08.x DS wajib: O08.0=infeksi | O08.1=perdarahan | O08.3=syok | O08.9=unspecified
O60 HANYA jika ada onset persalinan SPONTAN sebelum 37 minggu:
  O60.0=preterm labour tanpa delivery | O60.1=preterm labour WITH preterm delivery | O60.2=preterm labour with term delivery
  DILARANG O60 jika SC tanpa onset spontan — SC atas indikasi = O82.x bukan O60.
  KATA KUNCI O60: "mulas sendiri", "kontraksi spontan", "his spontan", "pembukaan spontan"
  KATA KUNCI O82: "SC ai", "SC atas indikasi", "SCTP ai", "elektif", "emergency SC", "SC darurat"
  "SC ai ..." = SC atas indikasi = TIDAK ada onset spontan = WAJIB O82.x bukan O60.x
  Teks menyebut "SC" tanpa onset spontan eksplisit → SELALU O82.x
O82: SC tanpa onset persalinan spontan:
  O82.0=elective/elektif (terencana) | O82.1=emergency/darurat | O82.2=unspecified
  SC darurat (TTTS/IUFD/fetal distress/perdarahan/ai indikasi darurat) → O82.1 DU
  SC terencana (bekas SC stabil, plasenta previa stabil tanpa perdarahan) → O82.0 DU
  CONTOH BENAR: "SC ai gemelli anak ke 2 + TTTS + IUFD" → O82.1 DU (bukan O60.1)
  CONTOH BENAR: "partus prematurus + SC ai fetal distress" → O82.1 DU (bukan O60.1)
  CONTOH SALAH: "SC ai gemelli" → O60.1 ✗ (tidak ada onset spontan di teks)
O34.2=bekas SC → WAJIB DS di semua kasus ada riwayat SC.
TTTS→O43.0† DS | IUFD→O36.4 DS | Gemelli=Includes O43.0/O36.4 → O30.0 TIDAK dikoding terpisah.
Urutan TTTS+IUFD+SC emergency: O82.1 DU→O43.0†→O36.4→O34.2→O99.0(jika Hb<10)→Z37.x terakhir.
Urutan TTTS+IUFD+partus spontan preterm: O60.1 DU→O43.0†→O36.4→O34.2→O99.0(jika Hb<10)→Z37.x terakhir.
Urutan TTTS+IUFD tanpa partus: O36.4 DU→O43.0†→O34.2→Z37.x terakhir.
Z37 WAJIB DS terakhir (MANDATORY): .0=single live | .1=single still | .2=twins both live | .3=twins one live one still | .4=twins both still. Gemelli+IUFD→Z37.3.
CHECKLIST AKHIR: sebelum finalisasi output, pastikan ada Z37.x di diagnoses array. Tidak ada → TAMBAHKAN.
INCLUDES/EXCLUDES berlaku penuh. O30.0 Includes di O43.0/O36.4 → tidak dikoding terpisah.
O99.0=anaemia in pregnancy: HANYA jika Hb<10 di teks.
WAJIB scan nilai lab/TTV abnormal:
  Hb<10+hamil→O99.0 DS | Hb<10+non-hamil→D64.9 | TD≥140/90+hamil→O13/O14
  GDS>200/GDP>126→O24(hamil) | SpO2<95% akut→J96.0 DS

## GINEKOLOGI / OBSTETRI PROSEDUR
SC/SCTP → WAJIB koding 74.1 "Low cervical caesarean section" (ICD-9-CM)
  BUKAN O82.1 — O82.1 adalah kode DIAGNOSIS bukan prosedur
  O82.1 = diagnosis ICD-10 | 74.1 = prosedur ICD-9-CM Vol.3
  LARANGAN KERAS: JANGAN pakai O82.x/O60.x sebagai kode prosedur
  Lead term prosedur SC: Caesarean section → low cervical 74.1
  74.1 Low cervical caesarean section
Kistektomi ovarium (buang kista, ovarium TETAP):
  Unilateral/Bilateral → 65.29 "Other local excision or destruction of ovary"
  BUKAN 65.31 (itu salpingo-oophorectomy = angkat ovarium+tuba seluruhnya)
Oophorectomy: Unilateral→65.39 | Bilateral→65.51
Salpingo-oophorectomy: Unilateral→65.49 | Bilateral→65.61
Z37 WAJIB DS TERAKHIR (MANDATORY):
  Z37.0=single liveborn | Z37.1=single stillborn
  Z37.2=twins both liveborn | Z37.3=twins one live one still | Z37.4=twins both stillborn
  description Z37.3 WAJIB: "Twins, one liveborn and one stillborn" (bukan "one live and one stillborn")
  Gemelli+IUFD satu fetus→Z37.3 | Gemelli+IUFD dua fetus→Z37.4
  CHECKLIST: sebelum finalisasi → cek ada Z37.x? Tidak ada → TAMBAHKAN sekarang.`;

const PROMPT_PROSEDUR = `
## ICD-9-CM PROCEDURE RULES
Tiga kategori — koding HANYA jika DISEBUT EKSPLISIT di teks:
1. OPERATIF: operasi, biopsi, intubasi, drainase, kateter, bronkoskopi, dll.
   Ventilator→96.70 | Intubasi→96.04 | Bronkoskopi→33.22 | Trakeostomi→31.21
   PCI/PTCA koroner→00.66 (BUKAN 35.61) | Stent drug-eluting→36.07 | Stent bare metal→36.06
   Primary PCI+stent → WAJIB dua kode: 00.66+36.07
   KASUS STEMI/ACS — WAJIB jika disebut:
   EKG/elektrokardiogram disebut→89.52 | Troponin disebut (termasuk "(+)")→90.59
   Echo disebut→88.72 | Foto thorax disebut→87.44
2. DIAGNOSTIK:
   Rontgen/foto thorax→87.44 | CT kepala→87.03 | CT thorax→87.41 | CT abdomen→88.01
   MRI otak→88.91 | Echo jantung→88.72 | USG abdomen→88.76 | USG obstetri→88.78
   EKG→89.52 | EEG→89.14 | Spirometri→89.37
   Gastroskopi→44.13 | Kolonoskopi→45.13
3. LAB:
   Darah rutin/kimia darah/nilai lab numerik di teks→90.59
   Troponin/troponin I/troponin T (termasuk "(+)" atau "positif")→90.59
   PCR/swab nasofaring/BTA sputum→90.41 | Kultur darah→90.54 | Kultur urin→90.29
   AGD→89.65 | Urinalisis→91.31 | PA/histopatologi→91.49
   Rapid test/rapid antigen/serologi→90.59
   EKG/elektrokardiogram disebut di teks (termasuk hasil EKG "ST elevasi")→89.52
DILARANG: antibiotik IV, infus obat/cairan = BUKAN kode prosedur.
DILARANG: 93.91 untuk nebulisasi (93.91=IPPB). Nebulisasi→93.94.
90.59: koding jika ada nilai numerik lab (Hb/leukosit/GDS/troponin = cukup bukti).
90.59: JANGAN koding jika hanya TTV (TD, nadi, suhu, SpO2) tanpa nilai lab.`;

const PROMPT_SPESIALIS = `
## MUSCULOSKELETAL (M00-M99)
Site digit: 0=multi,1=shoulder,2=elbow,3=wrist,4=hand,5=hip,6=knee,7=ankle,8=other,9=unspec. NEVER omit.
B95-B96: kode TAMBAHAN (additional code) — BUKAN dagger/asterisk.

## RESPIRATORY FAILURE RULES
SpO2<95% akut→J96.0 DS | SpO2<95% kronik→J96.1 DS | SpO2<95% unspec→J96.9 DS
RR>24+SpO2<95%→perkuat J96.0. JANGAN skip nilai abnormal.

## PNEUMONIA RULES
J18.1=bronchopneumonia (tanpa organisme) | J18.0=bronchopneumonia unspec
J15.x=bacterial: J15.0=Klebsiella | J15.1=Pseudomonas | J15.2=Staph | J15.4=other strep
Kultur/PCR positif → kode spesifik J15.x + B95/B96. Tanpa kultur → J18.x

## APPENDIX RULES
K35.0=perforasi+peritonitis | K35.1=perforasi+abscess | K35.8=acute appendicitis lain
K36=chronic | K37=unspecified. JANGAN K35 tanpa digit.

## EYE (H00-H59)
Katarak: H25=senile | H26=other | H26.0=infantile | H26.1=traumatic | H26.2=complicated
Fakoemulsifikasi+IOL→13.72 | Fakoemulsifikasi tanpa IOL→13.41 | ECCE→13.71
Laser fotokoagulasi retina→14.24 (BUKAN 14.25). 14.25=unspecified.
Retinopati DM: E11.3†+H36.0* keduanya wajib.

## EAR (H60-H95)
H72=perforasi membran timpani. WAJIB digit: H72.0=central | H72.1=attic | H72.2=other marginal | H72.9=unspec

## SPECIFICITY
E10=DM type1 | E11=DM type2. WAJIB 4th digit: .0=coma | .1=ketoacidosis | .2=renal | .3=ophthalmic | .4=neurological | .5=peripheral circ | .6=other | .7=multiple | .9=tanpa komplikasi.
DILARANG asumsi komplikasi tanpa bukti eksplisit — "riwayat DM" saja → E11.9.
Retinopati diabetik eksplisit → E11.3†+H36.0* (keduanya wajib, H36.0 WAJIB .0).
Katarak+DM → E11.3†. H36.0* HANYA jika retinopati disebut.
GDS tinggi tanpa komplikasi organ → E11.9.
I61=haemorrhagic stroke WAJIB digit:
  I61.0=subcortical hemisfer (ganglia basalis,thalamus,kapsula interna) | I61.1=kortikal
  I61.3=batang otak | I61.4=serebelum | I61.9=unspecified
I63=ischaemic+location WAJIB digit. Fracture: bone+location+open/closed. 4th/5th digit always.`;

const PROMPT_TRAUMA = `
## EXTERNAL CAUSE (Chapter XX)
V01-V99=transport | W00-W99=falls/other | X00-X59=environmental | X60-X84=self-harm | Y10-Y34=undetermined
Drug-induced (Y40-Y59) ONLY jika obat disebut eksplisit.

## TRAUMA INJURY RULES
S codes: WAJIB lokasi anatomi + open/closed. Fraktur: S+site+.0=closed .1=open
Multiple trauma → kode setiap injury terpisah. T codes untuk burns, poisoning, complications.`;

const PROMPT_JSON = `Return ONLY valid JSON with these keys:
{"summary","du_reasoning","validations":[{"type","message"}],"diagnoses":[{"role","code","dagger_asterisk","description","description_id","category","confidence","lead_term_path","volume1_notes":[{"type","text"}],"paired_with","reasoning"}],"procedures":[{"code","description","description_id","category","confidence","lead_term_path","volume1_notes","reasoning"}]}`;

// ── DETECT CASE TYPE & BUILD PROMPT ──
function buildPrompt(clinicalText, langInstruction) {
  const t = clinicalText.toLowerCase();

  const isObstetri = /hamil|partus|sc|sectio|caesar|obstet|gravida|trimester|janin|fetus|persalinan|nifas|postpartum|abortus|keguguran|ektopik|gemelli|kembar|kista ovarium|kistektomi|iufd|ttts|ketuban|peb|eklampsia|hpp|g\dpa|g\dp\da/.test(t);
  const isTrauma   = /fraktur|fracture|trauma|kecelakaan|luka|vulnus|dislokasi|orif|amputasi|combustio|luka bakar/.test(t);
  const isSpesialis = /dm|diabetes|stroke|infark|stemi|pci|pneumonia|asma|ppok|copd|appendis|katarak|glaukoma|retinopati|gout|artritis|spondil|hernia|jantung|cardiac|hepatitis|sirosis|gagal ginjal|ckd|aki|leukemia|limfoma|tumor|kanker|neoplasm|karsinoma|tiroid|tb\b|tuberkulosis|i61|i63/.test(t);

  let rules = PROMPT_BASE + '\n' + PROMPT_PROSEDUR;
  if (isObstetri)   rules += '\n' + PROMPT_OBSTETRI;
  if (isSpesialis)  rules += '\n' + PROMPT_SPESIALIS;
  if (isTrauma)     rules += '\n' + PROMPT_TRAUMA;

  return rules + '\n\n' + langInstruction + '\n\nTEKS KLINIS:\n' + clinicalText + '\n\n' + PROMPT_JSON;
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
    return new Response(
      JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan di environment variables" }),
      { status: 500, headers: corsHeaders }
    );
  }

  try {
    const body = await context.request.json();

    // Browser kirim: { clinicalText, langInstruction }
    // BUKAN full prompt — hemat bandwidth
    const clinicalText    = body.clinicalText || body.prompt || '';
    const langInstruction = body.langInstruction || '';

    // Build prompt di server
    const fullPrompt = buildPrompt(clinicalText, langInstruction);

    const attempts = [];
    for (const key of API_KEYS) {
      for (const model of MODELS) {
        attempts.push({ key, model });
      }
    }

    let lastError = null;

    for (let i = 0; i < attempts.length; i++) {
      const { key, model } = attempts[i];
      const keyIdx = API_KEYS.indexOf(key) + 1;
      let response, data;

      response = await fetch(
        "https://api.groq.com/openai/v1/chat/completions",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${key}`
          },
          body: JSON.stringify({
            model: model,
            temperature: 0.1,
            max_tokens: Math.min(4000, Math.max(2000, Math.ceil(fullPrompt.length / 8))),
            messages: [{ role: "user", content: fullPrompt }]
          })
        }
      );

      data = await response.json();

      if (response.status === 429) {
        const retryAfter = response.headers.get("x-ratelimit-reset-requests")
          || response.headers.get("retry-after");

        let waitMs = 8000;
        if (retryAfter) {
          if (retryAfter.endsWith('ms'))     waitMs = parseInt(retryAfter);
          else if (retryAfter.endsWith('s')) waitMs = parseFloat(retryAfter) * 1000;
          else                               waitMs = parseFloat(retryAfter) * 1000;
          waitMs = Math.min(waitMs, 15000);
        }

        lastError = `Rate limit — key ${keyIdx}, model ${model}, tunggu ${Math.round(waitMs/1000)}s`;

        if (i < attempts.length - 1) {
          await new Promise(r => setTimeout(r, waitMs));
        }
        continue;
      }

      if (data.error) {
        lastError = `Groq (key${keyIdx}/${model}): ${data.error.code} - ${data.error.message}`;
        if (response.status !== 429 && response.status !== 503) {
          return new Response(
            JSON.stringify({ error: lastError }),
            { status: 500, headers: corsHeaders }
          );
        }
        continue;
      }

      if (!data.choices || data.choices.length === 0) {
        return new Response(
          JSON.stringify({ error: "Tidak ada respons dari Groq. Coba lagi." }),
          { status: 500, headers: corsHeaders }
        );
      }

      const text = (data.choices[0].message.content || "")
        .replace(/```json\s*/gi, "").replace(/```\s*/g, "").trim();

      const quota = {
        model:             model,
        api_key_used:      `key_${keyIdx}`,
        rpm_limit:         response.headers.get("x-ratelimit-limit-requests")     || null,
        rpm_remaining:     response.headers.get("x-ratelimit-remaining-requests") || null,
        rpm_reset:         response.headers.get("x-ratelimit-reset-requests")     || null,
        tpm_limit:         response.headers.get("x-ratelimit-limit-tokens")       || null,
        tpm_remaining:     response.headers.get("x-ratelimit-remaining-tokens")   || null,
        tpm_reset:         response.headers.get("x-ratelimit-reset-tokens")       || null,
        tokens_used:       data.usage ? data.usage.total_tokens                   : null,
        prompt_tokens:     data.usage ? data.usage.prompt_tokens                  : null,
        completion_tokens: data.usage ? data.usage.completion_tokens              : null,
      };

      return new Response(
        JSON.stringify({ text, model_used: model, quota }),
        { status: 200, headers: corsHeaders }
      );
    }

    return new Response(
      JSON.stringify({
        error: `Semua API key sedang rate limit. Tunggu 1-2 menit. (${lastError})`
      }),
      { status: 429, headers: corsHeaders }
    );

  } catch (err) {
    return new Response(
      JSON.stringify({ error: `Server error: ${err.message}` }),
      { status: 500, headers: corsHeaders }
    );
  }
}

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Headers": "Content-Type",
      "Access-Control-Allow-Methods": "POST, OPTIONS"
    }
  });
}
