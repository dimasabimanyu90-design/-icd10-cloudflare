// Shared coding policy for browser and Cloudflare Functions.
// Sections: prompts, index evidence, ICS audit, keyword checks, format checks.
// Network and D1 adapters remain in functions/api/claude.js.
// Source versions and clinical limits: data/ICS_POLICY_README.md.

// ── PROMPT RULES (server-side) ──
// Browser hanya kirim teks klinis → hemat bandwidth
// Target: max ~9000 token worst case, ~5500 typical case

const PROMPT_BASE = `
## EXTRACTION DAN BUKTI
Usulkan coding ICD-10 WHO 2010/Indonesian Modification dan ICD-9-CM berdasarkan dokumentasi episode ini.
Diagnosis final DPJP menjadi dasar. Diagnosis sekunder harus relevan pada episode dan memenuhi kriteria ICS; riwayat saja tidak otomatis menjadi penyakit aktif/DS.
Jika hanya gejala terdokumentasi, usulkan kode gejala yang tepat dengan status provisional; jangan mengarang penyakit dari hasil lab, resep, operasi, bangsal, atau biaya.
Tidak nafsu makan bukan otomatis feeding difficulties. Diabetes tanpa tipe tidak otomatis tipe 2; insulin tidak membuktikan tipe 1.
Negasi, riwayat keluarga, diagnosis disingkirkan, dugaan, serta rencana tindakan harus dibedakan dari diagnosis final/tindakan yang dilakukan.
PROCEDURES: hanya tindakan yang benar-benar dilakukan dalam episode ini. Rencana, pembatalan, dan angka lab saja bukan bukti tindakan.
Jangan menggeneralisasi PCR/kultur/serologi/PA ke satu kode: periksa spesimen, metode, lokasi dan tabular. Infus/injeksi memiliki kode; kelayakan pelaporan bergantung pedoman dan dokumentasi.
## FIELDS
Satu DU bila diagnosis tersedia; semua DS harus punya bukti relevansi terhadap perawatan. Jelaskan alasan DU sebagai alasan pelayanan, bukan hanya alasan diagnosis ditegakkan.
Untuk setiap DS isi secondary_relevance_quote: kutipan dampak pada risiko/pemeriksaan/tatalaksana episode ini sesuai ICS §2.1.2 (PDF29–31); kosongkan bila belum tersedia.
Setiap item memiliki documentation_quote berupa kutipan persis input beserta konteks negasi/waktu; jangan memotong 'tidak', 'rencana', atau 'riwayat' dari kutipan.
code_system: WHO_ICD10_2010 atau ICD10_IM untuk diagnosis; ICD9_CM atau ICD9_IM untuk tindakan. Skema ini usulan AI, bukan bukti validitas.
description: kandidat nama kode; server mengambil nama referensi yang sesuai skema bila tersedia. description_id: terjemahan usulan, bukan nama resmi.
lead_term: kata utama indeks, bukan judul tabular lengkap. lead_term_path: null jika sumber indeks tidak tersedia; jangan mengarang hierarki atau rujukan.
confidence: null; probabilitas akurasi tidak dikalibrasi.
reasoning: alasan berbasis dokumentasi. volume1_notes: selalu []; server yang mengambil sumber.
Dagger/asterisk hanya jika indeks/tabular menetapkan pasangan tersebut. Asterisk tidak berdiri sendiri; hubungan etiologi-manifestasi harus terdokumentasi. Jangan membuat pasangan dari koeksistensi diagnosis.
paired_with: kode pasangan bila benar-benar didukung; lainnya null. Validitas pasangan dan urutan harus diperiksa, bukan disimpulkan dari simbol buatan AI.
validations: hanya WARNING/INFO tentang ketidakpastian; jangan mengirim status WHO_VALID atau status lulus.
`;

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
## SIRKULASI
DU mengikuti CORE dan fokus episode. Henti jantung, infeksi katup, sirosis/varises, atau hipertensi tidak menetapkan urutan DU/DS secara otomatis.
PCI: periksa 00.66; jenis stent, jumlah pembuluh, dan angiografi harus didokumentasikan. Stent tanpa jenis tidak otomatis DES.
Hipertensi dan stroke tidak otomatis menjadi pasangan dagger/asterisk. Gagal jantung/penyakit ginjal dan hipertensi memerlukan penelusuran konvensi kombinasi serta dokumentasi hubungan.
`;

// ── ICS MDC SARAF (MDC 11) ──
const PROMPT_IDRG_SARAF = `
## SARAF
Usia saat onset Alzheimer berbeda dari usia pasien sekarang; jangan menentukan early/late onset hanya dari usia saat dirawat.
Cedera saat epilepsi, sleep apnea dengan komorbiditas, dan sekuela: tentukan DU dari fokus episode dan pedoman, bukan urutan baku.
Stroke/infark/perdarahan, status epileptikus, dan parkinsonisme akibat obat memerlukan diagnosis dan rincian yang terdokumentasi. Jangan menyimpulkan etiologi atau sublokasi dari istilah umum.
UPPP dan tindakan gabungan hanya dikodekan sesuai komponen yang benar-benar dilakukan dan instruksi indeks/tabular.
`;

// ── ICS MDC OBSTETRI EXTRA (MDC 24 tambahan) ──
const PROMPT_IDRG_OBSTETRI_EXT = `
## OBSTETRI
Pilih penyulit yang menjadi alasan pelayanan sebagai kandidat DU sesuai ICS; metode persalinan tidak otomatis DU pada persalinan dengan penyulit.
Hasil persalinan Z37 hanya pada rekam ibu untuk episode persalinan yang benar-benar terjadi dan hasilnya diketahui, bukan semua kehamilan/abortus/kista ovarium.
Preeklamsia, anemia, dan diabetes kehamilan memerlukan diagnosis terdokumentasi; angka TD/Hb/GDS saja tidak menetapkan kode.
Jangan menganggap semua SC low cervical; rincian prosedur mengikuti laporan operasi.
`;

// ── ICS MDC DIGESTIF + HEPATOBILIAR (MDC 16-17) ──
const PROMPT_IDRG_DIGESTIF = `
## PENCERNAAN
Jangan rutin mengkode gejala yang sudah dijelaskan penyakit. Appendisitis: rincian peritonitis lokal/general, abses, dan perforasi mengikuti diagnosis dan subkategori WHO 2010.
Sirosis dan varises tidak menetapkan DU secara otomatis; periksa pasangan dan fokus perawatan.
Kolesistektomi laparoskopik → 51.23; teknik lain mengikuti tabular dan laporan operasi.
`;

// ── ICS MDC INFEKSI (MDC 28) ──
const PROMPT_IDRG_INFEKSI = `
## INFEKSI
Pilih kode HIV, TB, malaria dan sepsis sesuai diagnosis dan tingkat kepastian yang terdokumentasi. Jangan menghindari kode unspecified dengan mengarang organisme/metode konfirmasi.
HIV tidak otomatis B20-B24 DU untuk semua episode. Periksa hubungan kondisi dan instruksi khusus sebelum sequencing.
`;

// ── ICS MDC ONKOLOGI (MDC 34) ──
const PROMPT_IDRG_ONKO = `
## NEOPLASMA
DU tergantung tujuan episode: pengobatan tumor primer, metastasis, komplikasi, atau terapi terjadwal. Jangan mengubah semua rawat inap kanker menjadi Z51.1/Z51.0.
Bedakan kemoterapi oral/injeksi dan tindakan yang direncanakan/dilakukan.
`;

const PROMPT_OBSTETRI = `
## DOKUMENTASI OBSTETRI
Jangan menambahkan O08.9 pada semua missed abortion, atau O08.1 pada semua ruptur ektopik tanpa pemeriksaan instruksi tabular dan komplikasi yang terdokumentasi.
Status abortus lengkap/tidak lengkap bukan ditentukan semata-mata sebelum/sesudah kuretase.
Riwayat SC tidak otomatis membuktikan perawatan untuk bekas luka uterus pada episode ini.
Persalinan preterm tidak otomatis dibuktikan dari usia kehamilan; periksa onset, waktu persalinan, dan rincian diagnosis. Urgensi SC bukan satu-satunya alasan penentuan DU.
SC dengan TTTS/IUFD: pilih DU berdasarkan penyulit/fokus pelayanan yang terdokumentasi; jangan mengunci urutan semua kode. TTTS tidak otomatis dagger.
`;

const PROMPT_PROSEDUR = `
## ICD-9-CM
Gunakan indeks prosedur lalu tabular, dengan lokasi, metode, pendekatan, alat, durasi dan waktu yang terdokumentasi.
Pemetaan berikut hanya kandidat bila tindakan sesuai: Kolonoskopi→45.23; kolesistektomi laparoskopik → 51.23; THR→81.51; TKR→81.54; ORIF femur→79.35.
Intramedullary nail saja tidak membuktikan open reduction; ORIF sendiri bukan bukti open fracture.
Fakoemulsifikasi dan pemasangan IOL merupakan komponen berbeda: 13.41 untuk phaco; 13.71 untuk IOL saat ekstraksi satu tahap; 13.72 untuk pemasangan sekunder. Ikuti code also dan rincian laporan operasi (ICD 9 CM.pdf hal PDF46).
Ventilasi memerlukan rincian durasi jika tersedia; stent memerlukan jenis yang terdokumentasi; biopsi/endoskopi tidak interchangeable.
90.59 bukan kode generik untuk semua darah rutin/GDS/HbA1c. TTV atau angka hasil saja tidak membuktikan prosedur.
OMIT CODE: perlu catatan indeks dan bukti bahwa tindakan merupakan akses, bukan menghapus semua tindakan akses hanya karena ada tindakan lain.
`;

const PROMPT_SPESIALIS = `
## SPESIFISITAS
J96.x memerlukan diagnosis gagal napas; SpO2 sendiri bukan bukti.
J18.0 = bronchopneumonia, unspecified; harus ada dokumentasi bronkopneumonia.
J18.1 = lobar pneumonia, unspecified; dokumentasi pneumonia lobar/lobaris dapat berasal dari laporan radiolog yang mendukung diagnosis pneumonia DPJP (ICS §2.5.2–2.5.3, PDF62–63).
Lokasi lobus/infiltrat saja tidak memastikan pola lobar. Jangan mengubah kode hanya karena satu kutipan AI kurang lengkap; periksa seluruh dokumentasi yang relevan dan konflik.
J18.9 kandidat pneumonia tanpa pola/organisme yang lebih spesifik. Kuman tidak diketahui tidak otomatis berarti bakteri.
Hasil kultur harus dikonfirmasi dalam diagnosis klinis sebelum kode organisme tertentu. Hubungan pneumonia-influenza/aspirasi tidak boleh disimpulkan dari kata yang muncul terpisah.
DM: tipe dan komplikasi harus didokumentasikan; riwayat DM tidak otomatis E11.9. Insulin tidak menentukan tipe. Manifestasi mata tidak selalu retinopati diabetik; jangan otomatis menambah H36.0 untuk semua komplikasi mata.
Gunakan digit anatomi hanya bila subkategori tabular memang menyediakan digit tersebut; jangan menambah digit muskuloskeletal secara universal.
`;

const PROMPT_TRAUMA = `
## TRAUMA
External cause: V01-V99=transport | W=falls | X=environmental | X60-X84=self-harm
Fraktur traumatik: tentukan lokasi anatomi. Bila status terbuka/tertutup tidak dicatat, klasifikasikan tertutup menurut default ICD-10; jangan mengarang kutipan diagnosis tertutup.
Bila fraktur terbuka/compound fracture dicatat, pertahankan terbuka. ORIF/open reduction adalah tindakan, bukan bukti fraktur terbuka.
Default ini tidak menetapkan pola simple/comminuted, laterality, atau fraktur patologis. S72.30/S72.31 berpotensi bentrok antara digit WHO closed/open dan morfologi IM simple/butterfly; wajib jelaskan skema. Jangan mengganti deskripsi atau memilih morfologi dari closed/open.
Multiple trauma → kode tiap injury terpisah.
DU pada cedera/epilepsi mengikuti fokus pelayanan dan CORE, bukan urutan otomatis.`;

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
{"summary","du_reasoning","ics_context":{"documented_du_quote","mb_rule","mb_trigger_quote","mb5_mode","first_alternative_code"},"validations":[{"type","message"}],"diagnoses":[{"role","code","code_system","dagger_asterisk","description","description_id","category","confidence","lead_term","condition_term","lead_term_path","volume1_notes":[{"type","text"}],"paired_with","documentation_quote","secondary_relevance_quote","reasoning"}],"procedures":[{"code","code_system","description","description_id","category","confidence","lead_term_path","volume1_notes","documentation_quote","reasoning"}]}`;

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
  let sourcePath = null;
  const fail = reason => ({ ...(sourcePath || {}), code, status: 'unverified', source: 'WHO_INDEX', lead_term: initial,
    reason, cross_reference_trace: trace, cross_reference_status: 'unverified' });
  const clinicalConflict = diagnosis.clinical_validation?.status === 'review_required';
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
    const candidate = terms.find(item => String(item.code).toUpperCase() === code && !parseIndexReference(item.text));
    if (candidate) {
      const parts = normalizeIndexLabel(candidate.text).split(/\s+(-{1,3})\s+/);
      sourcePath = {index_path:{lead_term:parts[0],modifiers:parts.filter((_,i)=>i>0 && i%2===0),modifier_levels:parts.filter((_,i)=>i%2===1).map(x=>x.length),code},reference_scope:'source_candidate_only'};
    }
    if (clinicalConflict) return fail('Kode bertentangan dengan dokumentasi diagnosis; jalur sumber hanya referensi, bukan validasi klinis.');
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
// Candidate prefixes are resolved against the database; truncation alone is not proof.
function getIMParentCodes(code) {
  const value = String(code || '').trim().toUpperCase();
  if (!/^[A-Z]\d{2}\.\d{2,3}$/.test(value)) return [];
  const result = [];
  for (let length = value.length - 1; length >= 5; length--) result.push(value.slice(0,length));
  return result;
}

// These checks constrain evidence; they do not diagnose a patient.
function normalizeClinicalText(value) {
  return String(value || '').normalize('NFKC').toLowerCase().replace(/[‐‑‒–—−]/g, '-').replace(/\s+/g, ' ').trim();
}
function documentationIssue(quote, input, procedure = false) {
  const q = normalizeClinicalText(quote), text = normalizeClinicalText(input);
  if (!q || !text.includes(q)) return 'Kutipan belum terbukti pada teks input.';
  const contexts = [];
  let from = 0, at;
  while ((at = text.indexOf(q, from)) >= 0 && contexts.length < 50) {
    if ((/^[a-z0-9]/.test(q) && /[a-z0-9]/.test(text[at-1] || '')) || (/[a-z0-9]$/.test(q) && /[a-z0-9]/.test(text[at+q.length] || ''))) { from=at+q.length; continue; }
    const prefix = text.slice(Math.max(0, at - 100), at).split(/[.;!?]/).pop();
    const beginning = q.split(/[.;!?]/)[0];
    const suffix = text.slice(at + q.length,at + q.length + 80);
    contexts.push({text:prefix + beginning,suffix}); from = at + Math.max(1, q.length);
  }
  if (!contexts.length) return 'Kutipan hanya cocok sebagai potongan kata, bukan istilah yang terdokumentasi.';
  const uncertain = /(?:tidak(?: ada| ditemukan| dilakukan)?|tanpa|disangkal|belum(?: dilakukan)?|rencana|direncanakan|akan dilakukan|suspek|suspected|rule out|ruled out|no evidence of|denies|not performed|planned|cancelled|dibatalkan)\s+(?:\w+\s+){0,3}$/;
  const bad = contexts.every(({text:context,suffix}) => {
    const prefix = context.slice(0, Math.max(0, context.length - q.split(/[.;!?]/)[0].length));
    return /^\s*(?:tidak dilakukan|belum dilakukan|dibatalkan|disangkal|disingkirkan|ruled out|cancelled|not performed)\b/.test(suffix) || /\b(?:dibatalkan|disingkirkan|ruled out|cancelled|not performed)$/.test(q) || uncertain.test(prefix) || /^(?:tidak(?: ada| dilakukan)?|tanpa|belum|rencana|direncanakan|suspek|rule out|planned|cancelled|dibatalkan)\b/.test(q) ||
      (procedure && /(?:riwayat|history of|pernah)\s+(?:\w+\s+){0,3}$/.test(prefix));
  });
  return bad ? 'Kutipan berada dalam konteks negasi, dugaan, rencana atau riwayat; belum membuktikan diagnosis final/tindakan episode ini.' : null;
}
function hasFractureCodeCollision(code) {
  return /^(?:S(?:02|12|22|32|42|52|62|72|82|92))\.\d[01]$/.test(String(code || ''));
}

// Closed is a classification default, not a fabricated clinical statement.
function applyFractureDefaults(parsed, clinicalText) {
  const normalize = value => String(value || '').normalize('NFKC').toLowerCase()
    .replace(/[‐‑‒–—−]/g, '-').replace(/\s+/g, ' ').trim();
  const input = String(clinicalText || '');
  const clauses = input.split(/[;\n.!?]+|,\s*(?=(?:fraktur|fracture|open fracture|closed fracture))/i);
  const warnings = [];
  for (const diagnosis of parsed.diagnoses || []) {
    if (!/^(?:S(?:02|12|22|32|42|52|62|72|82|92)|T(?:02|08|10|12))(?:\.|$)|^T14\.2/.test(String(diagnosis.code || ''))) continue;
    const quote = String(diagnosis.documentation_quote || '').trim();
    const needle = normalize(quote).replace(/[.!?]+$/, '');
    const matching = clauses.filter(clause => needle && normalize(clause).includes(needle));
    if (documentationIssue(quote,input) || !needle || !normalize(input).includes(normalize(quote)) || !/fraktur|fracture|patah tulang/i.test(quote) || !matching.length) {
      diagnosis.fracture_status = {classification:'unverified', basis:'insufficient_documentation', clinical_confirmation:false};
      warnings.push({type:'WARNING',message:`Fraktur ${diagnosis.code}: default terbuka/tertutup belum diterapkan karena kutipan diagnosis belum terbukti atau tidak dapat dipisahkan per cedera.`});
      continue;
    }
    if (matching.some(clause => (clause.match(/fraktur|fracture|patah tulang/gi) || []).length > 1)) {
      diagnosis.fracture_status = {classification:'unverified',basis:'multiple_injuries_in_clause',clinical_confirmation:false};
      warnings.push({type:'WARNING',message:`Fraktur ${diagnosis.code}: beberapa cedera dalam satu klausa; status perlu dipisahkan per cedera.`});
      continue;
    }
    const evidence = matching.map(clause => normalize(clause)
      .replace(/open reduction(?: and internal fixation)?|reduksi terbuka|\borif\b/g, 'tindakan reduksi')
      .replace(/(?:tidak|belum) (?:disebutkan|dinyatakan|dicatat)[\s\S]*$/, '')
      .replace(/tidak terbuka/g, 'tertutup')
      .replace(/\b(?:luka terbuka|open wound)\b/g, 'associated wound')).join('; ');
    const open = /\b(?:open|compound) fracture\b|(?:fraktur|fracture|patah tulang)[^;]{0,100}\b(?:terbuka|open|compound)\b/.test(evidence);
    const closed = /\bclosed fracture\b|(?:fraktur|fracture|patah tulang)[^;]{0,100}\b(?:tertutup|closed)\b/.test(evidence);
    if (open && closed) {
      diagnosis.fracture_status = {classification:'unverified',basis:'conflicting_documentation',clinical_confirmation:false};
      warnings.push({type:'WARNING',message:`Fraktur ${diagnosis.code}: dokumentasi terbuka dan tertutup bertentangan; klarifikasi diperlukan.`});
      continue;
    }
    const classification = open ? 'open' : 'closed';
    diagnosis.fracture_status = {classification, basis:open || closed ? 'documented' : 'icd10_default',
      clinical_confirmation:Boolean(open || closed), source:'ICD-10 fracture category note', code_unchanged:true};
    const message = open || closed
      ? `Fraktur ${diagnosis.code}: status ${open ? 'terbuka' : 'tertutup'} sesuai dokumentasi pada cedera tersebut.`
      : `Fraktur ${diagnosis.code}: status terbuka/tertutup tidak disebutkan; diklasifikasikan tertutup menurut default ICD-10 untuk coding, bukan konfirmasi klinis. Kode IM/pola fraktur tidak diubah otomatis.`;
    warnings.push({type:'INFO',message});
  }
  return warnings;
}

// Targeted contradiction checks; this is not a complete clinical coding engine.
function auditClinicalCoding(parsed, clinicalText) {
  const input = String(clinicalText || '');
  const normalize = value => String(value || '').normalize('NFKC').toLowerCase().replace(/[‐‑‒–—−]/g, '-').replace(/\s+/g, ' ').trim();
  const warnings = [];
  for (const diagnosis of parsed.diagnoses || []) {
    const quote = String(diagnosis.documentation_quote || '');
    const evidenceIssue = documentationIssue(quote,input);
    const supportedQuote = !evidenceIssue;
    const patternEvidence = input.split(/[;\n.!?]+/).filter(clause => /pneumonia/i.test(clause) && !documentationIssue(clause,input) && !/(?:tidak ada|tanpa|no evidence of|suspek|rule out)[^;]{0,40}(?:lobar|lobaris|bronkopneumonia|bronchopneumonia)/i.test(clause)).join('; ');
    const morphologyEvidence = input.split(/[;\n.!?]+/).filter(clause => /femur/i.test(clause) && /shaft|diafis|batang|1\s*\/\s*3 tengah/i.test(clause) && !documentationIssue(clause,input)).join('; ');
    const issues = [];
    const morphologyRules = {
      'S72.30': /\b(?:simple|sederhana)\b/i,
      'S72.31': /\bbutterfly\b/i,
      'S72.32': /\b(?:comminuted|kominutif|kominuta)\b/i,
      'S72.37': /\b(?:bifocal|bifokal|segmental|multiple|multipel)\b/i
    };
    if (supportedQuote && morphologyRules[diagnosis.code] && (!hasFractureCodeCollision(diagnosis.code) || diagnosis.code_system === 'ICD10_IM') && /femur/i.test(quote) && /shaft|diafis|batang|1\s*\/\s*3 tengah/i.test(quote) &&
        !morphologyRules[diagnosis.code].test(morphologyEvidence)) {
      const originalCode = diagnosis.code;
      diagnosis.code = 'S72.3';
      diagnosis.description = 'Fracture of shaft of femur';
      diagnosis.description_id = 'Fraktur shaft femur';
      diagnosis.lead_term = 'Fracture';
      diagnosis.lead_term_path = null;
      diagnosis.volume1_notes = [];
      diagnosis.coding_adjustment = {original_code:originalCode, proposed_code:'S72.3',
        rule:'unsupported_femoral_shaft_morphology', status:'provisional_requires_clarification'};
      diagnosis.reasoning = 'Fraktur shaft femur terdokumentasi; pola morfologi subkode IM sebelumnya tidak terbukti. Gunakan usulan kategori dasar dan klarifikasi pola bila diperlukan.';
      diagnosis.confidence = Math.min(Number(diagnosis.confidence) || 70, 70);
      warnings.push({type:'WARNING',message:`Subkode ${originalCode} tidak didukung pola fraktur dalam kutipan; dikembalikan sementara ke S72.3. Status tertutup tidak membuktikan pola simple/butterfly/comminuted/segmental.`});
    }
    const unspecifiedOrganism = /(?:tidak ada|tanpa) (?:kuman|organisme) spesifik|(?:kuman|organisme)(?: penyebab)? (?:belum|tidak) (?:diketahui|teridentifikasi)|(?:tidak|belum) (?:menyebut(?:kan)?|mencantumkan|mengidentifikasi|menentukan) (?:kuman|organisme|patogen)(?: spesifik)?|organism (?:unknown|unspecified)/i.test(normalize(input));
    const unsupportedPattern = diagnosis.code === 'J18.0'
      ? !/bronchopneumonia|bronkopneumonia|bronchial pneumonia/i.test(patternEvidence)
      : diagnosis.code === 'J18.1' && !/\b(?:lobar|lobaris)\b/i.test(patternEvidence);
    if (supportedQuote && unsupportedPattern && unspecifiedOrganism && /pneumonia/i.test(quote) &&
        !/aspiras|aspirat|bakter|bacter|viral|virus|influenza|hipost|hypost|pneumococc|streptococc|staphylococc|klebsiella|haemophilus|mycoplasma/i.test(input)) {
      const originalCode = diagnosis.code;
      diagnosis.code = 'J18.9';
      diagnosis.description = 'Pneumonia, unspecified';
      diagnosis.description_id = 'Pneumonia, tidak spesifik';
      diagnosis.lead_term = 'Pneumonia';
      diagnosis.lead_term_path = null;
      diagnosis.volume1_notes = [];
      diagnosis.confidence = Math.min(Number(diagnosis.confidence) || 70, 70);
      diagnosis.reasoning = 'Organisme belum diketahui dan dokumentasi hanya menyatakan lokasi pneumonia; pola bronchopneumonia/lobar belum ditegaskan. J18.9 merupakan usulan sementara, perlu klarifikasi dokter.';
      diagnosis.coding_adjustment = {original_code: originalCode, proposed_code: 'J18.9',
        rule: 'pneumonia_location_without_documented_pattern', status: 'provisional_requires_clarification'};
      warnings.push({type:'WARNING',message:`Usulan ${originalCode} dikoreksi sementara menjadi J18.9: lokasi lobus bukan bukti pola broncho/lobar; klarifikasi diagnosis dokter tetap diperlukan.`});
      issues.push('Kode dikoreksi sementara; keputusan klinis dan DU tetap perlu ditinjau.');
    }
    if (!supportedQuote) issues.push(evidenceIssue);
    if (diagnosis.code === 'J18.0' && (!supportedQuote || !/\b(?:bronchopneumonia|bronkopneumonia|bronchial pneumonia)\b/i.test(patternEvidence)))
      issues.push('J18.0 memerlukan diagnosis bronchopneumonia/bronkopneumonia; lokasi lobus atau infiltrat saja tidak cukup.');
    if (diagnosis.code === 'J18.1' && (!supportedQuote || !/\b(?:lobar|lobaris)\b/i.test(patternEvidence)))
      issues.push('J18.1 memerlukan dokumentasi lobar/lobaris pneumonia, termasuk laporan radiolog yang relevan; lokasi lobus saja perlu klarifikasi.');
    if (/^J96\./.test(diagnosis.code) && (!supportedQuote || !/gagal napas|respiratory failure/i.test(quote)))
      issues.push('SpO2 saja tidak membuktikan diagnosis gagal napas.');
    if (diagnosis.dagger_asterisk && diagnosis.dagger_asterisk !== 'none') issues.push('Usulan dagger/asterisk dan pasangan belum diverifikasi terhadap konvensi tabular.');
    diagnosis.clinical_validation = {status: issues.length ? 'review_required' : 'no_targeted_contradiction',
      clinical_validity: 'not_certified', issues};
    for (const issue of issues) warnings.push({type:'WARNING',message: `Ketidaksesuaian dokumentasi ${diagnosis.code}: ${issue}`});
  }
  for (const procedure of parsed.procedures || []) {
    const quote = String(procedure.documentation_quote || '');
    const issue = documentationIssue(quote,input,true) || (procedure.code === '90.59' && !/mikroskop|microscop/i.test(quote) ? '90.59 memerlukan verifikasi jenis pemeriksaan; bukan kode generik hasil lab.' : null);
    procedure.clinical_validation = {status:issue ? 'review_required' : 'documentation_present',clinical_validity:'not_certified',issues:issue ? [issue] : []};
    if (issue) warnings.push({type:'WARNING', message:`Prosedur ${procedure.code}: kutipan tindakan belum terbukti; jangan menyimpulkan tindakan dari hasil lab atau kelaziman.`});
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
      if (key === 'diagnoses' && !['DU','DS'].includes(item.role)) warnings.push({type:'WARNING',message:`Diagnosis ${code}: peran DU/DS tidak valid.`});
      if (item.dagger_asterisk === 'asterisk' && (!item.paired_with || !(parsed.diagnoses || []).some(d => d.code === item.paired_with))) warnings.push({type:'WARNING',message:`Kode asterisk ${code} tidak memiliki pasangan etiologi yang tercantum.`});
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
  for (const [i,d] of diagnoses.entries()) if (d.role === 'DS') check(`secondary_relevance_${i}`,hasQuote(d.secondary_relevance_quote),`Relevansi DS ${d.code} terhadap episode/perawatan belum terbukti; riwayat saja tidak cukup.`,'ICS §2.1.2, hal28–30');
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
  '87.03': ['ct scan kepala','ct head','ct-scan kepala','ct kepala','ct otak'],
  '87.41': ['ct scan thorax','ct thorax','ct scan dada','ct dada'],
  '88.01': ['ct scan abdomen','ct abdomen','ct scan perut','ct perut'],
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
  '90.54': ['kultur darah','blood culture','biakan darah'],
  '93.94': ['nebulisasi','nebulizer','inhalasi','nebul'],
  '93.96': ['oksigen','o2 ','nasal kanul','masker oksigen','nasal prong','oxygen','suplemen oksigen','pemberian o2'],
  '93.91': ['ippb','intermittent positive pressure'],
  '96.04': ['intubasi','endotracheal tube','ett','intubation','pasang ett'],
  '96.70': ['ventilator','mechanical ventilation','ventilasi mekanik','ventilasi invasif'],
  '33.22': ['bronkoskopi','bronchoscopy','bronkos','fiber optic bronchoscopy'],
  '00.66': ['pci','angioplasti','balloon','ptca','kateterisasi intervensi','primary pci','percutaneous coronary','angioplasty'],
  '36.06': ['bare metal stent','bms','stent bms'],
  '36.07': ['drug eluting stent','des','stent des','drug-eluting stent'],

  '37.21': ['kateterisasi jantung kanan','right heart cath'],

  '54.11': ['laparotomi','laparotomy','eksplorasi laparotomi'],
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


  '79.35': ['orif femur','open reduction internal fixation femur','reduksi terbuka femur'],
  '79.36': ['orif tibia','orif fibula','reduksi terbuka tibia'],
  '81.51': ['total hip replacement','thr','hip replacement','ganti sendi panggul'],
  '81.54': ['total knee replacement','tkr','knee replacement','ganti sendi lutut'],
  '77.35': ['osteotomi femur','osteotomy femur'],
  '74.1':  ['sc','sectio','cesar','caesarean','operasi cesar','sctp','seksio sesarea'],
  '65.29': ['kistektomi','cystectomy','eksisi kista','angkat kista','buang kista','reseksi kista ovarium'],

  '65.39': ['oophorectomy unilateral','angkat ovarium unilateral'],
  '65.51': ['bilateral oophorectomy','angkat kedua ovarium'],
  '65.61': ['bilateral salpingo-oophorectomy','angkat kedua ovarium dan tuba bilateral'],
  '13.41': ['fakoemulsifikasi','phacoemulsification','phaco'],

  '14.24': ['laser fotokoagulasi','photocoagulation','laser retina','laser fotokoagulasi retina','laser photocoagulation','destruction of chorioretinal'],
  '14.25': ['fotokoagulasi tipe tidak spesifik','photocoagulation unspecified type'],
  '16.49': ['enukleasi','enucleation','angkat bola mata'],

  '03.09': ['laminektomi','laminectomy','eksplorasi spinal','dekompresi spinal'],


  '34.04': ['chest tube','wsd','water seal drainage','selang dada','torakostomi','thoracostomy'],
  '31.1':  ['trakeostomi permanen','permanent tracheostomy'],
  '31.21': ['trakeostomi','tracheostomy','trakeostomi temporer'],


  '55.23': ['biopsi ginjal','renal biopsy','kidney biopsy'],
  '55.51': ['nefrektomi','nephrectomy','angkat ginjal'],



  '99.04': ['transfusi','transfusion','prc','wbc transfusi','transfusi darah','packed red cell'],
  '99.17': ['injeksi insulin','insulin injection','insulin drip','infus insulin'],
  '99.15': ['nutrisi parenteral','parenteral nutrition','tpn'],
  '57.94': ['kateter urin','foley catheter','foley','pemasangan kateter','dauer catheter','dc '],
  '38.93': ['cvp','cvc','central venous','pemasangan cvp','pemasangan cvc','central line'],
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

    const found = keywords.some(kw => {
      const escaped = kw.trim().replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
      const matches = [...lowerInput.matchAll(new RegExp('\\b' + escaped + '\\b','g'))];
      return matches.some(m => !documentationIssue(m[0], inputText, true));
    });
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

export { documentationIssue, hasFractureCodeCollision, getIMParentCodes, applyFractureDefaults, auditClinicalCoding, buildPrompt, extractLeadTerm, normalizeIndexLabel, parseIndexReference, formatIndexTrace, indexTermMatches, buildWHOIndexPath, resolveWHOIndexReferences, referenceWarnings, validateCodingStructure, ICS_REFERENCE_PROFILE, auditICSContext, validateProcedures, validateDiagnosisCode, validateDiagnoses, isIMCode };

