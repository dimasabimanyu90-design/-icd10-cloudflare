// Shared coding policy for browser and Cloudflare Functions.
// Sections: prompts, index evidence, ICS audit, keyword checks, format checks.
// Network and D1 adapters remain in functions/api/claude.js.
// Source versions and clinical limits: data/ICS_POLICY_README.md.

// ── PROMPT RULES (server-side) ──
// Browser hanya kirim teks klinis → hemat bandwidth
// Target: max ~9000 token worst case, ~5500 typical case

const PROMPT_BASE = `
## EXTRACTION
Kamu adalah sistem auto-coding ICD-10 dan ICD-9-CM profesional untuk iDRG/JKN Indonesia.
Dari teks klinis berikut, ekstrak semua diagnosis dan prosedur.

DIAGNOSES: ONLY explicitly stated. 1 DU + ALL DS.
"No dx" HANYA kalau teks BENERAN tidak ada info klinis sama sekali (misal catatan administratif kosong) → diagnoses:[].
Kalau ada GEJALA eksplisit (demam, diare, nyeri, tidak nafsu makan, dll) TAPI dokter belum tulis nama diagnosis definitif →
WAJIB kode gejala pake R-code (lihat bagian R CODES di bawah). JANGAN kosongkan diagnoses[] kalau ada gejala tersurat di teks.
PROCEDURES: ONLY explicitly mentioned. None → procedures:[].
LARANGAN MUTLAK: JANGAN koding prosedur tidak eksplisit di teks.
DILARANG asumsikan prosedur dari logika klinis/kelaziman.

LAB vs TTV:
- Nilai lab numerik saja bukan bukti otomatis untuk kode prosedur; gunakan dokumentasi pemeriksaan dan tabular list
- TTV saja (TD, nadi, suhu, RR, SpO2) tanpa nilai lab → JANGAN koding 90.59
- PCR/swab nasofaring → 90.41 | Rapid test → 90.59 | Kultur darah → 90.54

PROSEDUR yang DILARANG tanpa kata kunci eksplisit:
- Foto thorax (87.44): wajib ada "foto thorax/rontgen/x-ray/CXR"
- Nebulisasi (93.94): wajib ada "nebulisasi/nebulizer/inhalasi"
- Oksigen (93.96): wajib ada "oksigen/O2/nasal kanul/masker"
- 90.59: jangan koding jika hanya TTV

CHECKLIST PROSEDUR sebelum finalisasi:
1. Kata kunci prosedur ada di teks? Tidak → hapus
2. Kode pemeriksaan laboratorium harus didukung dokumentasi pemeriksaan, bukan hanya angka hasil atau TTV

## DU SELECTION
Gunakan aturan diagnosis utama pada CORE ICS di bawah. Jangan menentukan DU hanya dari bangsal, operasi, biaya, atau nama komplikasi tanpa dokumentasi dan hubungan klinis.

## FIELDS
description: HARUS dari baris terakhir lead_term_path tanpa kode. BUKAN dari memori.
lead_term: lead term utama dari Volume 3 Index, terpisah dari path. HARUS berupa istilah yang benar-benar menjadi lead term, bukan diagnosis bebas.
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
paired_with: hanya pasangan kode yang diwajibkan konvensi dagger/asterisk atau aturan tabular, bukan daftar semua diagnosis sekunder. Jika tidak ada pasangan yang dapat dibuktikan, gunakan null.
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
- R sebagai DU: WAJIB (bukan opsional) kalau teks HANYA berisi gejala tanpa diagnosis definitif → WARNING provisional
- Kode definitif BOLEH jika: (1) dokter tulis eksplisit di resume, (2) penunjang konfirmasi,
  (3) patogen spesifik DIKONFIRMASI dokter, (4) tindakan operatif dilakukan
- CONTOH: teks cuma "tidak mau makan, diare terus-menerus, demam 3 hari" tanpa diagnosis apapun →
  JANGAN diagnoses:[]. WAJIB: R50.9 (fever) sebagai DU atau DS + R19.7 (diarrhoea unspecified) + R63.3 (feeding
  difficulties, dari mapping "tidak nafsu makan") + WARNING di validations[] bahwa ini provisional, belum ada dx definitif.

## VALIDATION
Tambahkan validations[] jika ada keraguan/provisional/Rule MB diterapkan.`;

// ── ICS CORE: MB Rules + DU iDRG (selalu aktif, ringkas) ──
const PROMPT_IDRG_CORE = `
## PROFIL REFERENSI ICS DRAFT V1 (25-07-2025) — BUKAN PENGESAHAN KLAIM
Gunakan diagnosis final DPJP dan dokumentasi; semua penerapan/konflik perlu tinjau koder.
DU (ICS §2.1.1, hal cetak 23–24/PDF 24–25): satu diagnosis final, alasan utama perawatan; jangan pilih kondisi baru selama perawatan sebagai DU. Bila beberapa penyakit menjadi fokus, pertimbangkan keparahan dahulu lalu sumber daya bila tingkat keparahan sama. Jangan menebak diagnosis dari biaya, resep atau angka lab saja.
MB1 (hal 33/PDF34): kondisi minor/lama/insidental dicatat sebagai DU tetapi kondisi sekunder lebih bermakna dan relevan pengobatan/prosedur/spesialisasi → ajukan reseleksi dengan bukti.
MB2 (hal34/PDF35): beberapa kondisi dicatat sebagai DU yang tidak dapat dikode bersamaan → pilih alasan utama pelayanan; jika tidak dapat ditentukan, pertimbangkan spesialisasi. Jangan menjadikan spesialisasi satu-satunya bukti.
MB3 (hal35/PDF36): DU berupa gejala/tanda/masalah dari kondisi sekunder yang telah didiagnosis DAN diobati → ajukan kondisi tersebut sebagai DU.
MB4 (hal36/PDF37): rincian anatomi/penyebab dari kondisi DU yang sama tersedia dalam resume → gunakan rincian. Penyakit sekunder yang tidak berkaitan tidak boleh otomatis menjadi DU.
MB5 (hal37/PDF38), DUA CABANG BERBEDA:
- Gejala utama disertai beberapa kemungkinan penyebab → pilih gejalanya (contoh dokumen: sakit kepala mungkin karena stres/tegangan otot/sinusitis → R51).
- Dua atau lebih diagnosis alternatif ditulis sebagai DU → menurut profil DRAFT ini pilih yang pertama ditulis DPJP (contoh kolesistitis akut atau pankreatitis akut → K81.0). Ini aturan profil draft, perlu verifikasi dokumentasi dan tinjau; bukan otomatis kode gejala untuk seluruh diagnosis alternatif.
Catat mb_rule dan mb_trigger_quote. Jangan mengklaim penerapan MB telah diverifikasi otomatis.
Gejala (hal38/PDF39): jangan rutin menambah gejala yang sudah dijelaskan penyakit terdiagnosis; pengecualian perlu dokumentasi dan aturan spesifik.
Prosedur (hal53–55/PDF54–56): see/see also harus ditelusuri; omit code berlaku bila indeks menyatakannya dan tindakan sebagai akses untuk tindakan definitif. Bila akses merupakan satu-satunya tindakan, jangan otomatis menghapusnya. Code also hanya ditambahkan jika tindakan terkait benar-benar dilakukan; jangan menganggap semuanya wajib dilakukan.
Pendokumentasian: tulis documentation_quote untuk SETIAP diagnosis dan tindakan, kutipan singkat persis dari TEKS KLINIS. Jika bukti tidak ada, nyatakan belum terdokumentasi; jangan buat kutipan.
Isi ics_context: documented_du_quote (DU yang dicatat DPJP, jika ada), mb_rule (MB1–MB5 atau null), mb_trigger_quote, mb5_mode (symptom_with_possible_causes/alternative_diagnoses atau null), first_alternative_code (hanya bila urutan DPJP jelas).
`;

const PROMPT_IDRG_SIRKULASI = `
## ICS MDC 15 — SIRKULASI
- Primary PCI → periksa 00.66; stent dan jumlah pembuluh hanya ditambahkan sesuai dokumentasi tindakan yang benar-benar dilakukan.
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
- Kolesistektomi laparoskopik → 51.23 | terbuka → 51.22`;

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
- PCI → periksa 00.66. Tambahkan stent dan jumlah pembuluh hanya jika jenis tindakan/jumlah benar-benar terdokumentasi; jangan otomatis pilih DES.
- EKG disebut→89.52 | Hasil troponin positif bukan bukti otomatis tindakan berkode 90.59 | Echo disebut→88.72 | Foto thorax→87.44
- Coronary angiography→88.55/88.56

DIAGNOSTIK:
- Foto thorax→87.44 | CT kepala→87.03 | CT thorax→87.41 | CT abdomen→88.01
- MRI otak→88.91 | Echo→88.72 | USG abdomen→88.76 | USG obstetri→88.78
- EKG→89.52 | EEG→89.14 | Spirometri→89.37 | Gastroskopi→44.13 | Kolonoskopi→45.23

LAB:
- Pemeriksaan darah yang terdokumentasi → periksa kode tabular; angka hasil saja tidak otomatis memberi 90.59 | PCR/swab/BTA sputum→90.41
- Kultur darah→90.54 | Kultur urin→90.29 | AGD→89.65 | Urinalisis→91.31 | PA→91.49
- Rapid test/antigen/serologi→90.59

DILARANG: antibiotik IV, infus obat/cairan = BUKAN kode prosedur.
Nebulisasi→93.94 (BUKAN 93.91). Kode pemeriksaan harus didukung dokumentasi tindakan; jangan menyimpulkan prosedur dari angka lab atau TTV saja.
OMIT CODE mengikuti CORE ICS: perlu catatan indeks dan bukti bahwa tindakan merupakan akses; keberadaan prosedur lain saja tidak cukup untuk menghapus kode.`;

const PROMPT_SPESIALIS = `
## SPESIALIS

MUSCULOSKELETAL: site digit wajib: 0=multi,1=shoulder,2=elbow,3=wrist,4=hand,5=hip,6=knee,7=ankle,8=other,9=unspec
ORIF femur→79.35 | ORIF tibia/fibula→79.36 | THR→81.51 | TKR→81.54
B95-B96: additional code (bukan dagger/asterisk)

RESPIRATORY:
J96.x hanya bila gagal napas didiagnosis dokter. SpO2 rendah saja tidak membuktikan gagal napas.

PNEUMONIA & INFLUENZA:
- JANGAN otomatis memilih J18.x bila teks secara klinis menghubungkan pneumonia dengan influenza.
- Jika dokter mendokumentasikan "influenza dengan pneumonia" / "pneumonia akibat influenza" dan virus influenza lain teridentifikasi → J10.0 sebagai kode kombinasi. J18.x TIDAK dikoding terpisah.
- Jika influenza dengan pneumonia tetapi jenis/virus influenza TIDAK teridentifikasi → gunakan J11.0 sesuai WHO ICD-10 2010. J18.x TIDAK dikoding terpisah.
- Jika influenza yang teridentifikasi adalah influenza avian tertentu → ikuti J09 sesuai dokumentasi.
- HANYA gunakan J18.x bila pneumonia memang tidak ditetapkan sebagai manifestasi/akibat influenza atau etiologinya tidak dikaitkan dengan influenza.
- Jika teks hanya menyebut "pneumonia dan influenza" tanpa hubungan sebab-akibat yang jelas, jangan mengarang hubungan. Gunakan klarifikasi/validasi klinis; jangan otomatis membuat J18.9 + kode influenza.
- Jangan menggunakan J10/J11 hanya karena kata "influenza" muncul. Pilih subkategori berdasarkan dokumentasi dan aturan WHO.
- J18.0 = bronchopneumonia, unspecified; hanya bila bronchopneumonia/bronkopneumonia tertulis sebagai diagnosis.
- J18.1 = lobar pneumonia, unspecified; hanya bila dokter menegaskan lobar/lobaris pneumonia, bukan sekadar lokasi lobus pada foto thorax.
- Pneumonia lobus kanan atas/CAP tanpa pernyataan pola lobar atau broncho dan tanpa organisme → kandidat J18.9; beri catatan klarifikasi pola pneumonia. Jangan menebak bronchopneumonia dari lokasi/infiltrat.
- Kuman tidak diketahui tidak otomatis berarti pneumonia bakterial (J15.9).
- J15.x HANYA jika kuman spesifik DIKONFIRMASI dokter di resume medis (bukan hanya hasil lab)
- Kultur positif tanpa konfirmasi dokter → tetap J18.x

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

const PROMPT_ICS_SOURCE_OVERLAY = `
PRIORITAS REFERENSI: bagian ini dan CORE bersumber dari ICS DRAFT Juli2025 dan presentasi iDRG April2025; keduanya referensi unggahan pengguna, status berlaku saat ini belum diverifikasi. Jika aturan ringkas sebelumnya bertentangan, ikuti CORE/overlay ini untuk profil referensi dan beri warning, jangan sembunyikan konflik.
Presentasi iDRG hal8: kode harus didukung dokumentasi medis; keberadaan diagnosis/prosedur dalam database tidak membuktikan bahwa tindakan dilakukan atau DU tepat.
Kemoterapi/Radioterapi RAWAT JALAN saja (presentasi hal46–47): kunjungan kemoterapi → Z51.1 + keganasan; injeksi kemoterapi yang dilakukan → tambahkan 99.25; kemoterapi oral jangan otomatis diberi 99.25. Kunjungan radioterapi → Z51.0 + keganasan + tindakan yang benar-benar diberikan. Jangan memperluas aturan rawat jalan ke semua kasus rawat inap atau semua pasien kanker.
ICS hal54–55: craniotomy sebagai akses ditambah reseksi tumor → omit akses jika didukung indeks; craniotomy tanpa tindakan definitif lanjutan → jangan otomatis omit.
Tidak ada diagnosis final/bukti urutan/setting perawatan → minta klarifikasi, jangan mengarang untuk mengisi rules.
`;

const PROMPT_JSON = `
REFERENSI INDEKS: ikuti see (wajib), see also (bila informasi terkait belum tercakup), dan see condition (cari nama kondisi yang terdokumentasi).
Jangan mengarang rujukan atau menandai jalur terverifikasi. condition_term hanya diisi dengan nama kondisi yang ada dalam teks klinis.
Untuk kondisi multi-modifier, setiap modifier harus diperiksa di indeks dan kode akhir di tabular. Sistem akan memberi tanda unverified bila sumber tidak membuktikan jalur.
Return ONLY valid JSON:
{"summary","du_reasoning","ics_context":{"documented_du_quote","mb_rule","mb_trigger_quote","mb5_mode","first_alternative_code"},"validations":[{"type","message"}],"diagnoses":[{"role","code","dagger_asterisk","description","description_id","category","confidence","lead_term","condition_term","lead_term_path","volume1_notes":[{"type","text"}],"paired_with","documentation_quote","reasoning"}],"procedures":[{"code","description","description_id","category","confidence","lead_term_path","volume1_notes","documentation_quote","reasoning"}]}`;

// ── DETECT CASE TYPE & BUILD PROMPT ──
function buildPrompt(clinicalText, langInstruction) {
  const t = clinicalText.toLowerCase();

  const isObstetri  = /hamil|partus|sc\b|sectio|caesar|obstet|gravida|trimester|janin|fetus|persalinan|nifas|postpartum|abortus|keguguran|ektopik|gemelli|kembar|kista ovarium|kistektomi|iufd|ttts|ketuban|peb|eklampsia|hpp|g\dpa|g\dp\da/.test(t);
  const isTrauma    = /fraktur|fracture|trauma|kecelakaan|luka|vulnus|dislokasi|orif|amputasi|combustio|luka bakar/.test(t);
  const isSpesialis = /orif|\bthr\b|\btkr\b|arthroplast|ortopedi|penggantian sendi|dm|diabetes|stroke|infark|stemi|pci|pneumonia|asma|ppok|copd|appendis|katarak|glaukoma|retinopati|gout|artritis|spondil|hernia|jantung|cardiac|hepatitis|sirosis|gagal ginjal|ckd|aki|leukemia|limfoma|tumor|kanker|neoplasm|karsinoma|tiroid|tb\b|tuberkulosis|alzheimer|epilep|sleep apnea/.test(t);
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

  return rules + '\n' + PROMPT_ICS_SOURCE_OVERLAY + '\n\n' + langInstruction + '\n\nTEKS KLINIS:\n' + clinicalText + '\n\n' + PROMPT_JSON;
}


// ── WHO ICD-10 2010 VALIDATION ──
// WHO validator tetap menjadi Layer 1. Hasil AI tidak dianggap final
// sebelum setiap diagnosis ICD-10 melewati WHO.

// ── SOURCE-BASED INDEX RULES ──
function extractLeadTerm(diagnosis) {
  const explicit = String(diagnosis?.lead_term || '').trim();
  if (explicit) return explicit;

  const path = diagnosis?.lead_term_path;
  if (Array.isArray(path)) {
    const first = path.find(line => String(line).trim() && !String(line).trim().startsWith('-'));
    if (first) return String(first).trim().replace(/^CODE\s+/i, '');
  }

  if (typeof path === 'string') {
    const first = path.split(/\r?\n/).find(line => line.trim() && !line.trim().startsWith('-'));
    if (first) return first.trim().replace(/^CODE\s+/i, '');
  }

  return String(diagnosis?.description || '').trim();
}

function normalizeIndexLabel(value) {
  return String(value || '').replace(/<[^>]*>/g, '').replace(/\s+/g, ' ').trim();
}

function parseIndexReference(value) {
  const text = normalizeIndexLabel(value);
  const match = text.match(/\bsee\s+(also\s+)?(.+)$/i);
  if (!match) return null;
  const target = match[2].replace(/[)\].]+$/, '').trim();
  const condition = /^(?:the\s+)?condition\b/i.test(target);
  return { type: condition ? 'see_condition' : match[1] ? 'see_also' : 'see', target, source_text: text };
}

function formatIndexTrace(result) {
  const escape = value => String(value || '').replace(/[&<>"']/g, char => ({ '&': '&amp;', '<': '&lt;', '>': '&gt;', '"': '&quot;', "'": '&#39;' }[char]));
  const steps = (result.cross_reference_trace || []).map(step => step.directive
    ? `${step.from} → ${step.directive.replace(/_/g, ' ')} → ${step.target || '?'}`
    : `${step.term} → ${step.code}`);
  return steps.length ? ' Langkah sumber: ' + escape(steps.join('; ')) + '.' : '';
}

function indexTermMatches(source, requested) {
  const key = value => normalizeIndexLabel(value).toLowerCase().replace(/[‐‑‒–—]/g, '-').replace(/[^a-z0-9]+/g, ' ').trim();
  const text = normalizeIndexLabel(source).split(/\bsee\b/i)[0].replace(/[-,(\s]+$/, '');
  const root = text.split(/\s+-{1,3}\s+/)[0];
  // Parenthesized WHO index qualifiers are nonessential modifiers.
  // Remove them only from the source root, never from essential dash branches.
  const bareRoot = root.replace(/\([^()]*\)/g, ' ').replace(/\s+/g, ' ').trim();
  return Boolean(key(requested)) && (key(text) === key(requested) || key(root) === key(requested) || key(bareRoot) === key(requested));
}

function buildWHOIndexPath(indexResult, diagnosis, term = extractLeadTerm(diagnosis)) {
  const code = String(diagnosis?.code || '').trim().toUpperCase();
  const candidates = Array.isArray(indexResult?.results) ? indexResult.results : [];
  const match = candidates.find(item => String(item.code || '').toUpperCase() === code &&
    (item.index_terms || []).some(label => indexTermMatches(label, term) && !parseIndexReference(label) && !/\s+-{1,3}\s+/.test(normalizeIndexLabel(label))));
  if (!match) return null;
  const sourceTerm = match.index_terms.find(label => indexTermMatches(label, term) && !parseIndexReference(label) && !/\s+-{1,3}\s+/.test(normalizeIndexLabel(label)));
  // Only source text supplies the hierarchy; AI modifiers are never certified.
  const parts = normalizeIndexLabel(sourceTerm).split(/\s+(-{1,3})\s+/);
  const modifiers = [], levels = [];
  for (let i = 1; i < parts.length; i += 2) {
    if (parts[i + 1]) { modifiers.push(parts[i + 1].trim()); levels.push(parts[i].length); }
  }
  return {
    status: 'verified', source: 'WHO_INDEX', version: 'ICD-10 2010', code,
    lead_term: parts[0], index_terms: [normalizeIndexLabel(sourceTerm)],
    index_path: { lead_term: parts[0], modifiers, modifier_levels: levels, code, title: match.title || diagnosis.who_official_title || '' },
    tabular_path: match.tabular_path || [], tabular_path_display: match.path_display || [],
    note: 'Istilah dan jalur berasal dari WHO Index; kesesuaian klinis seluruh modifier tetap perlu ditinjau.'
  };
}

async function resolveWHOIndexReferences(diagnosis, request, lookup) {
  const code = String(diagnosis.code || '').trim().toUpperCase();
  const initial = extractLeadTerm(diagnosis);
  const trace = [];
  const visited = new Set();
  let term = initial;
  const pending = [];
  const fail = reason => ({ code, status: 'unverified', source: 'WHO_INDEX', lead_term: initial,
    reason, cross_reference_trace: trace, cross_reference_status: 'unverified' });
  if (diagnosis.clinical_validation?.status === 'review_required') return fail('Kode bertentangan dengan dokumentasi diagnosis; tinjau kecocokan klinis sebelum memvalidasi indeks.');
  // Includes all branches: max four source queries per diagnosis, not per branch.
  for (let step = 0; step < 4; step++) {
    const key = normalizeIndexLabel(term).toLowerCase();
    if (!key || key.length < 2) return fail('Istilah tujuan rujukan tidak tersedia.');
    if (visited.has(key)) return fail('Rujukan indeks berulang atau membentuk siklus.');
    visited.add(key);
    const data = await lookup(term, code, request);
    if (!data || data.valid !== true) return fail('Sumber WHO Index tidak tersedia untuk membuktikan rujukan.');
    const terms = (data.results || []).flatMap(item => (item.index_terms || []).map(text => ({ text, code: item.code })))
      .filter(item => indexTermMatches(item.text, term));
    if (!terms.length) return fail('Kode ditemukan tetapi istilah pencarian tidak terbukti pada WHO Index.');
    const references = terms.map(item => parseIndexReference(item.text)).filter(Boolean);
    const unique = [...new Map(references.map(ref => [ref.type + ':' + ref.target, ref])).values()];
    if (unique.length) {
      // Mixed direct entries and referrals cannot safely be selected from just a lead term.
      if (terms.some(item => !parseIndexReference(item.text))) return fail('Istilah memiliki beberapa jalur; perlu pemilihan modifier dan rujukan secara manual.');
      const targets = unique.map(ref => {
        const target = ref.type === 'see_condition' ? String(diagnosis.condition_term || '').trim() : ref.target;
        trace.push({ from: term, directive: ref.type, target: target || null, source: 'WHO_INDEX', source_text: ref.source_text });
        return target;
      });
      if (targets.some(target => !target)) return fail('See condition memerlukan nama kondisi yang terdokumentasi; AI tidak boleh menebak tujuan.');
      pending.unshift(...targets.slice(1));
      term = targets[0];
      continue;
    }
    const resolved = buildWHOIndexPath(data, diagnosis, term);
    if (!resolved) return fail('Kode hanya ditemukan pada cabang indeks yang modifiernya belum dibuktikan, atau tujuan indeks tidak cocok dengan kode.');
    trace.push({ term, code, source: 'WHO_INDEX', source_text: resolved.index_terms[0], status: 'code_match' });
    if (pending.length) { term = pending.shift(); continue; }
    // AI-proposed directives must be evidenced by the source, not accepted as facts.
    const aiPath = Array.isArray(diagnosis.lead_term_path) ? diagnosis.lead_term_path.join('\n') : String(diagnosis.lead_term_path || '');
    if (/\bsee\b/i.test(aiPath) && !trace.some(item => item.directive)) return fail('Rujukan yang ditulis AI tidak ditemukan pada sumber indeks.');
    if (diagnosis.who_validation?.valid !== true) return fail('Jalur indeks cocok, tetapi konfirmasi tabular belum berhasil.');
    return { ...resolved, cross_reference_trace: trace,
      cross_reference_status: trace.some(item => item.directive) ? 'resolved' : 'not_observed',
      cross_reference_coverage: 'returned_source_terms_only' };
  }
  return fail('Batas penelusuran rujukan tercapai; tinjau indeks secara manual.');
}


// ── STRUCTURE AND ICS DOCUMENTATION CHECKS ──
// Targeted contradiction checks; this is not a complete clinical coding engine.
function auditClinicalCoding(parsed, clinicalText) {
  const input = String(clinicalText || '');
  const normalize = value => String(value || '').toLowerCase().replace(/\s+/g, ' ').trim();
  const warnings = [];
  for (const diagnosis of parsed.diagnoses || []) {
    const quote = String(diagnosis.documentation_quote || '');
    const supportedQuote = quote && normalize(input).includes(normalize(quote));
    const issues = [];
    if (!supportedQuote) issues.push('Kutipan diagnosis belum terbukti di input.');
    if (diagnosis.code === 'J18.0' && (!supportedQuote || !/\b(?:broncho(?:pneumonia)?|bronko(?:pneumonia)?|bronchial pneumonia)\b/i.test(quote)))
      issues.push('J18.0 memerlukan diagnosis bronchopneumonia/bronkopneumonia; lokasi lobus atau infiltrat saja tidak cukup.');
    if (diagnosis.code === 'J18.1' && (!supportedQuote || !/\b(?:lobar|lobaris)\b/i.test(quote)))
      issues.push('J18.1 memerlukan dokumentasi lobar/lobaris pneumonia; lokasi lobus saja perlu klarifikasi.');
    if (/^J96\./.test(diagnosis.code) && (!supportedQuote || !/gagal napas|respiratory failure/i.test(quote)))
      issues.push('SpO2 saja tidak membuktikan diagnosis gagal napas.');
    diagnosis.clinical_validation = {status: issues.length ? 'review_required' : 'no_targeted_contradiction',
      clinical_validity: 'not_certified', issues};
    for (const issue of issues) warnings.push({type:'WARNING',message: `Ketidaksesuaian dokumentasi ${diagnosis.code}: ${issue}`});
  }
  for (const procedure of parsed.procedures || []) {
    const quote = String(procedure.documentation_quote || '');
    if (!quote || !normalize(input).includes(normalize(quote))) warnings.push({type:'WARNING', message:`Prosedur ${procedure.code}: kutipan tindakan belum terbukti; jangan menyimpulkan tindakan dari hasil lab atau kelaziman.`});
    if (procedure.code === '90.59' && !/pemeriksaan darah|blood examination|mikroskop|microscop/i.test(quote)) warnings.push({type:'WARNING',message:'90.59 tidak dibuktikan oleh nilai GDS/HbA1c saja; periksa tindakan dan deskripsi tabular.'});
  }
  return warnings;
}

function referenceWarnings(result, label) {
  if (result.status === 'unavailable') return [{ type: 'WARNING', message: `${label}: referensi IM tidak tersedia; verifikasi manual diperlukan.` }];
  return result.items.filter(x => x.im_reference).map(x => ({
    type: 'WARNING', message: `${label} ${x.code}: ditemukan ${x.im_reference.entries.length} entri referensi PDF (halaman ${x.im_reference.entries.map(e => e.pdf_page).join(', ')}). Data draft, kesesuaian coding belum dinilai.${x.im_reference.ambiguous ? ' Ada deskripsi berbeda untuk kode yang sama; wajib tinjau sumber.' : ''}`
  }));
}

function validateCodingStructure(parsed) {
  const warnings = [];
  for (const [key, pattern] of [['diagnoses', /^[A-Z]\d{2}(?:\.\d{1,3})?$/], ['procedures', /^\d{2}(?:\.\d{1,3})?$/]]) {
    const seen = new Set();
    for (const item of (Array.isArray(parsed[key]) ? parsed[key] : [])) {
      const code = String(item.code || '').trim().toUpperCase();
      if (!pattern.test(code)) warnings.push({ type: 'WARNING', message: `${key}: format kode tidak sesuai; verifikasi manual.` });
      if (seen.has(code)) warnings.push({ type: 'WARNING', message: `${key}: kode ${code} berulang; periksa duplikasi.` });
      seen.add(code);
      if (key === 'procedures' && /^\d{2}(?:\.\d)?$/.test(code)) warnings.push({ type: 'WARNING', message: `Prosedur ${code}: periksa apakah kategori ini memerlukan subkode lebih rinci.` });
    }
  }
  return warnings;
}

const ICS_REFERENCE_PROFILE = {
  id: 'uploaded-ics-draft-v1-20250725', status: 'draft_reference', clinical_validity: 'not_assessed',
  sources: [
    { file: 'ICS Version 1_25072025.pdf', status: 'DRAFT V1', sections: '2.1.1; 2.2.1–2.2.5; 2.3.1', printed_pages: '23–24, 33–38, 53–55', pdf_pages: '24–25, 34–39, 54–56' },
    { file: '20250414-pedoman-koding-idrg_compress.pdf', status: 'presentation_reference', pdf_pages: '8, 46–47', date: '2025-04-14' }
  ]
};

function auditICSContext(parsed, clinicalText) {
  const normalize = value => String(value || '').replace(/\s+/g, ' ').trim().toLowerCase();
  const original = normalize(clinicalText);
  const hasQuote = value => normalize(value).length >= 8 && original.includes(normalize(value));
  const checks = [];
  const warnings = [];
  function check(id, passed, message, source) {
    checks.push({ id, status: passed ? 'evidence_present' : 'review_required', source });
    if (!passed) warnings.push({ type: 'WARNING', message: `${message} [${source}; profil referensi draft]` });
  }
  const diagnoses = Array.isArray(parsed.diagnoses) ? parsed.diagnoses : [];
  const procedures = Array.isArray(parsed.procedures) ? parsed.procedures : [];
  const primary = diagnoses.filter(d => d.role === 'DU');
  if (diagnoses.length) check('single_primary', primary.length === 1, 'Harus ada satu diagnosis utama; periksa pemilihan DU.', 'ICS §2.1.1, hal23–24');
  for (const [kind, items] of [['diagnosis', diagnoses], ['prosedur', procedures]]) {
    for (const [index, item] of items.entries()) check(`${kind}_documentation_${index}`, hasQuote(item.documentation_quote),
      `Bukti tertulis untuk ${kind} nomor ${index + 1} belum cocok dengan teks klinis; verifikasi dokumentasi.`, 'Pedoman iDRG April2025, hal8');
  }
  const context = parsed.ics_context && typeof parsed.ics_context === 'object' ? parsed.ics_context : {};
  if (diagnoses.length) check('documented_primary', hasQuote(context.documented_du_quote),
    'DU yang dicatat DPJP belum dapat dibuktikan dari teks input; usulan AI perlu ditinjau.', 'ICS §2.1.1, hal23–24');
  if (context.mb_rule) {
    const mb = String(context.mb_rule).toUpperCase();
    const recognized = /^MB[1-5]$/.test(mb);
    check('mb_rule_identity', recognized, 'Identitas aturan reseleksi tidak dikenali.', 'ICS §2.2, hal33–37');
    check('mb_trigger_documentation', hasQuote(context.mb_trigger_quote), 'Dasar tertulis reseleksi MB belum cocok dengan teks input.', 'ICS §2.2, hal33–37');
    if (recognized) {
      warnings.push({ type: 'WARNING', message: `Usulan Rule ${mb}: bukti kutipan tidak membuktikan ketepatan reseleksi klinis; tinjau diagnosis, hubungan dan pengobatan. [ICS §2.2, hal${32 + Number(mb[2])}; draft]` });
      if (mb === 'MB5') {
        const mode = context.mb5_mode;
        check('mb5_branch', ['symptom_with_possible_causes', 'alternative_diagnoses'].includes(mode), 'MB5 perlu dibedakan antara gejala dengan dugaan penyebab dan diagnosis alternatif.', 'ICS §2.2.5, hal37');
        if (mode === 'alternative_diagnoses') check('mb5_first_alternative', primary.length === 1 && Boolean(context.first_alternative_code) && context.first_alternative_code === primary[0].code,
          'Pilihan DU belum cocok dengan diagnosis alternatif pertama yang dilaporkan; verifikasi urutan penulisan DPJP.', 'ICS §2.2.5, hal37');
      }
    }
  }
  // Bounded, explicit setting checks; never infer outpatient status or delivery route.
  if (original.includes('rawat jalan') && /kemoterapi\s+(?:injeksi|suntik)/.test(original)) {
    check('outpatient_chemo_primary', primary.some(d => d.code === 'Z51.1'), 'Kunjungan kemoterapi rawat jalan: periksa DU Z51.1 sesuai tujuan kunjungan.', 'Pedoman iDRG April2025, hal46');
    check('documented_chemo_injection', procedures.some(p => p.code === '99.25' && hasQuote(p.documentation_quote)), 'Injeksi kemoterapi rawat jalan tercantum: periksa tindakan 99.25 beserta bukti pelaksanaannya.', 'Pedoman iDRG April2025, hal46');
  }
  return { profile: ICS_REFERENCE_PROFILE, status: !checks.length ? 'not_applicable' : checks.some(c => c.status === 'review_required') ? 'review_required' : 'documentation_checks_passed',
    clinical_review_required: true, checks, warnings };
}


// ── PROCEDURE KEYWORD CHECKS (warnings, not coding approval) ──
// Procedure evidence keyword checks

const PROC_KEYWORDS = {
  '87.44': ['foto thorax','rontgen dada','chest x-ray','rontgen thorax','x-ray dada','foto dada','cxr'],
  '87.49': ['foto thorax','rontgen','chest x-ray','x-ray thorax'],
  '87.03': ['ct scan kepala','ct head','ct-scan kepala','ct kepala','ct otak','ct scan','computed tomography','hiperdensitas','hiperdens','hipodens','ct-scan'],
  '87.41': ['ct scan thorax','ct thorax','ct scan dada','ct dada'],
  '88.01': ['ct scan abdomen','ct abdomen','ct scan perut','ct perut'],
  '88.38': ['ct scan lumbar','ct spine','ct lumbal','ct tulang belakang'],
  '88.91': ['mri brain','mri kepala','mri otak'],
  '88.92': ['mri chest','mri thorax','mri dada'],
  '88.93': ['mri spine','mri tulang belakang','mri lumbal'],
  '88.94': ['mri muskuloskeletal','mri sendi','mri lutut','mri bahu'],
  '88.76': ['usg abdomen','ultrasonografi abdomen','usg perut','ultrasound abdomen'],
  '88.78': ['usg obstetri','usg kehamilan','usg gravid','usg janin','usg obgyn'],
  '88.72': ['echo','echokardiografi','echocardiography','usg jantung','ekokardiografi'],
  '92.18': ['bone scan','skintigrafi tulang'],
  '89.52': ['ekg','ecg','elektrokardiogram','elektrokardiografi'],
  '89.65': ['agd','analisa gas darah','blood gas','arterial blood gas','ags'],
  '89.14': ['eeg','elektroensefalogram','electroencephalogram'],
  '89.37': ['spirometri','spirometry','fev','fvc','uji fungsi paru'],
  '90.59': ['pemeriksaan darah','darah rutin','blood test','cbc','pemeriksaan laboratorium','kimia darah','analisis darah'],
  '90.41': ['kultur sputum','sputum culture','kultur dahak','biakan sputum','pcr','swab nasofaring','swab tenggorok','bta sputum','sputum bta'],
  '90.54': ['kultur darah','blood culture','biakan darah'],
  '90.29': ['kultur urin','urine culture','biakan urin'],
  '91.31': ['urinalisis','urin rutin','urinalysis','urine rutin','pemeriksaan urin'],
  '91.49': ['histopatologi','pa ','patologi anatomi','biopsi','histologi'],
  '93.94': ['nebulisasi','nebulizer','inhalasi','nebul'],
  '93.96': ['oksigen','o2 ','nasal kanul','masker oksigen','nasal prong','oxygen','suplemen oksigen','pemberian o2'],
  '93.91': ['ippb','intermittent positive pressure'],
  '96.04': ['intubasi','endotracheal tube','ett','intubation','pasang ett'],
  '96.70': ['ventilator','mechanical ventilation','ventilasi mekanik','ventilasi invasif'],
  '33.22': ['bronkoskopi','bronchoscopy','bronkos','fiber optic bronchoscopy'],
  '33.23': ['bronkoskopi terapeutik','therapeutic bronchoscopy'],
  '00.66': ['pci','angioplasti','balloon','ptca','kateterisasi intervensi','primary pci','percutaneous coronary','angioplasty'],
  '36.06': ['bare metal stent','bms','stent bms'],
  '36.07': ['drug eluting stent','des','stent des','drug-eluting stent','stent koroner','pemasangan stent','stent lad','stent rca','stent lcx'],

  '37.21': ['kateterisasi jantung kanan','right heart cath'],
  '37.22': ['kateterisasi jantung kiri','left heart cath','coronary angiography','angiografi koroner'],

  '54.11': ['laparotomi','laparotomy','eksplorasi laparotomi'],
  '54.19': ['laparotomi','laparotomy'],
  '47.01': ['appendektomi laparoskopik','laparoscopic appendectomy','apendektomi laparoskopik'],
  '47.09': ['appendektomi','apendektomi','appendectomy','operasi usus buntu'],
  '51.23': ['kolesistektomi laparoskopik','laparoscopic cholecystectomy','lap chole'],
  '51.22': ['kolesistektomi','cholecystectomy','angkat kantung empedu'],
  '53.00': ['herniorrafi','hernia repair','repair hernia','herniorafi'],

  '46.10': ['kolostomi','colostomy'],
  '46.13': ['kolostomi permanen','permanent colostomy'],
  '45.73': ['hemikolektomi kanan','right hemicolectomy'],
  '45.75': ['hemikolektomi kiri','left hemicolectomy'],
  '52.7':  ['whipple','pancreaticoduodenectomy','pankreatikoduodenektomi'],
  '44.13': ['gastroskopi','gastroscopy','endoskopi atas','upper endoscopy','ugie'],
  '45.23': ['kolonoskopi','colonoscopy'],
  '45.13': ['endoskopi usus halus','small bowel endoscopy'],
  '52.14': ['ercp','endoscopic retrograde'],
  '51.11': ['ercp','erc','cholangiography'],
  '57.6':  ['sistektomi total','total cystectomy'],

  '60.29': ['prostatektomi','prostatectomy'],
  '79.05': ['reduksi tertutup','closed reduction'],

  '79.35': ['nail intramedular','intramedullary nail','im nail','nailing femur'],
  '79.36': ['nail tibia','tibia nail','im nail tibia'],
  '81.51': ['total hip replacement','thr','hip replacement','ganti sendi panggul'],
  '81.54': ['total knee replacement','tkr','knee replacement','ganti sendi lutut'],
  '77.35': ['osteotomi femur','osteotomy femur'],
  '74.1':  ['sc','sectio','cesar','caesarean','operasi cesar','sctp','seksio sesarea'],
  '65.29': ['kistektomi','cystectomy','eksisi kista','angkat kista','buang kista','reseksi kista ovarium'],

  '65.39': ['oophorectomy unilateral','angkat ovarium unilateral'],
  '65.51': ['bilateral oophorectomy','angkat kedua ovarium'],
  '65.61': ['bilateral salpingo-oophorectomy','angkat kedua ovarium dan tuba bilateral'],
  '13.72': ['fakoemulsifikasi','phacoemulsification','phaco','iol','intraocular lens','lensa tanam'],
  '13.41': ['fakoemulsifikasi','phacoemulsification','phaco'],

  '14.24': ['laser fotokoagulasi','photocoagulation','laser retina','laser fotokoagulasi retina','laser photocoagulation','destruction of chorioretinal'],
  '14.25': ['fotokoagulasi tipe tidak spesifik','photocoagulation unspecified type'],
  '16.49': ['enukleasi','enucleation','angkat bola mata'],

  '01.24': ['kraniotomi','craniotomy','trepanasi','bur hole'],
  '02.12': ['kraniektomi','craniectomy','dekompresi kranial','decompressive craniectomy'],
  '03.09': ['laminektomi','laminectomy','eksplorasi spinal','dekompresi spinal'],


  '34.04': ['chest tube','wsd','water seal drainage','selang dada','torakostomi','thoracostomy','pungsi pleura','pleural tap'],
  '34.09': ['torakoskopi','thoracoscopy','vats','video assisted thoracoscopy'],
  '31.1':  ['trakeostomi permanen','permanent tracheostomy'],
  '31.21': ['trakeostomi','tracheostomy','trakeostomi temporer'],

  '42.10': ['esofagoskopi','esophagoscopy','endoskopi esofagus'],
  '43.19': ['gastrektomi','gastrectomy','reseksi lambung'],
  '48.50': ['reseksi rektum','rectal resection','hartmann','lar','anterior resection'],
  '52.12': ['biopsi pankreas','pancreas biopsy','biopsi pankreas'],

  '55.23': ['biopsi ginjal','renal biopsy','kidney biopsy'],
  '55.51': ['nefrektomi','nephrectomy','angkat ginjal'],
  '56.0':  ['nefrostomi','nephrostomy','pielostomi','pyelostomy'],
  '59.8':  ['dj stent','double j','stent ureter','ureteral stent','pemasangan stent ureter'],


  '90.09': ['pcr darah','blood pcr','pemeriksaan darah lain'],
  '91.71': ['analisa cairan pleura','pleural fluid','pungsi pleura','torakosentesis','thoracocentesis'],
  '91.61': ['lumbal pungsi','lumbar puncture','lp ','cairan serebrospinal','csf','pungsi lumbal'],

  '99.04': ['transfusi','transfusion','prc','wbc transfusi','transfusi darah','packed red cell'],
  '99.17': ['injeksi insulin','insulin injection','insulin drip','infus insulin'],
  '99.15': ['nutrisi parenteral','parenteral nutrition','tpn'],
  '57.94': ['kateter urin','foley catheter','foley','pemasangan kateter','dauer catheter','dc '],
  '38.93': ['cvp','cvc','central venous','pemasangan cvp','pemasangan cvc','central line'],
  '89.11': ['konsultasi neurologi','neurology consult','penilaian neurologis'],
};

/**
 * Cek apakah prosedur yang dikoding AI ada kata kuncinya di teks input
 * @param {Array} procedures - array prosedur dari hasil AI
 * @param {string} inputText - teks klinis asli yang diinput user
 * @returns {Array} array warning untuk prosedur yang tidak terverifikasi
 */
function validateProcedures(procedures, inputText) {
  if (!procedures || procedures.length === 0) return [];
  const lowerInput = String(inputText || '').toLowerCase();
  const warnings = [];

  for (const proc of procedures) {
    const keywords = PROC_KEYWORDS[proc.code];
    if (!keywords) continue; // kode tidak ada di map → tidak dapat dinilai oleh pemeriksaan kata kunci

    const found = keywords.some(kw => lowerInput.includes(kw.toLowerCase()));
    if (!found) {
      warnings.push({
        code: proc.code,
        description: proc.description,
        message: `<strong>${proc.code} — ${proc.description}</strong> belum didukung kata kunci tindakan yang sesuai pada teks input; periksa dokumentasi dan sinonim secara manual.`
      });
    }
  }
  return warnings;
}



// ── DIAGNOSIS FORMAT/REFERENCE CHECKS ──
// ── DIAGNOSIS CODE VALIDATOR ──
// Cek eksistensi & format kode diagnosis ICD-10 hasil AI.
// TIDAK mengklaim kode "salah" kalau tidak ada di KNOWN_PATHS — itu cuma
// artinya belum diverifikasi manual, bukan invalid. Format check tetap
// menangkap halusinasi paling jelas (kode ngawur / typo AI).
function validateDiagnosisCode(code, knownPaths = {}) {
  if (!code || typeof code !== 'string') {
    return { valid: false, verified: false, reason: 'empty_or_invalid_type' };
  }
  const trimmed = code.trim();
  // Format dasar ICD-10: 1 huruf + 2 digit + opsional .1-3 digit.
  // Extended/IM references dapat memakai karakter tambahan setelah kategori WHO.
  // Jadi 3 digit setelah titik tidak boleh langsung dianggap "format invalid".
  const icd10Format = /^[A-Z]\d{2}(\.\d{1,3})?$/;
  if (!icd10Format.test(trimmed)) {
    return { valid: false, verified: false, reason: 'format_invalid', code: trimmed };
  }
  if (knownPaths[trimmed]) {
    return { valid: true, verified: false, reference_found: true, code: trimmed };
  }
  return {
    valid: true,
    verified: false,
    code: trimmed,
    extended: /^[A-Z]\d{2}\.\d{3}$/.test(trimmed)
  };
}

// Validasi 1 batch diagnosis sekaligus, return warning list
// (menggunakan sumber aturan yang sama dengan validateProcedures)
function validateDiagnoses(diagnoses, knownPaths = {}) {
  if (!diagnoses || diagnoses.length === 0) return [];
  const warnings = [];
  for (const d of diagnoses) {
    const result = validateDiagnosisCode(d.code, knownPaths);
    if (!result.valid) {
      warnings.push({
        code: d.code,
        message: `<strong>${d.code} — ${d.description || ''}</strong> format kode tidak valid. Kemungkinan halusinasi AI — verifikasi manual!`
      });
    } else if (!result.reference_found && !d.im_reference && d.who_validation?.valid !== true) {
      const confidence = Number(d.confidence || 0);
      if (result.extended) {
        warnings.push({
          code: d.code,
          message: `<strong>${d.code} — ${d.description || ''}</strong> format kode valid, tetapi merupakan kode extended/3-digit dan belum terverifikasi di database ICD-10 IM. Verifikasi title dan laterality secara manual.`
        });
      } else if (confidence < 70) {
        warnings.push({
          code: d.code,
          message: `<strong>${d.code} — ${d.description || ''}</strong> belum terverifikasi di database referensi dan confidence rendah (${confidence}%). Cek manual ke ICD-10 IM.`
        });
      }
    }
  }
  return warnings;
}


// IM badges require returned reference metadata, not a hard-coded code allowlist.
function isIMCode(item) {
  const ref = item && typeof item === 'object' ? item.im_reference : null;
  return Boolean(ref && (ref.local_extension || (ref.entries || []).some(entry => /\(IM\)/i.test(entry.title_extracted || ''))));
}

export { auditClinicalCoding, buildPrompt, extractLeadTerm, normalizeIndexLabel, parseIndexReference, formatIndexTrace, indexTermMatches, buildWHOIndexPath, resolveWHOIndexReferences, referenceWarnings, validateCodingStructure, ICS_REFERENCE_PROFILE, auditICSContext, validateProcedures, validateDiagnosisCode, validateDiagnoses, isIMCode };
