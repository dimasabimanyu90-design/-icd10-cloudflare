// validator.js — Procedure Hallucination Validator
// Auto-checks apakah prosedur yang dikoding AI ada kata kuncinya di teks input
// Versi: 1.0 | Tambahkan <script src="validator.js"></script> di index.html sebelum </body>

const PROC_KEYWORDS = {
  // ── RADIOLOGI ──
  '87.44': ['foto thorax','rontgen dada','chest x-ray','rontgen thorax','x-ray dada','foto dada','cxr'],
  '87.49': ['foto thorax','rontgen','chest x-ray','x-ray thorax'],
  '87.03': ['ct scan kepala','ct head','ct-scan kepala','ct kepala','ct otak'],
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

  // ── EKG & PEMERIKSAAN FUNGSIONAL ──
  '89.52': ['ekg','ecg','elektrokardiogram','elektrokardiografi'],
  '89.65': ['agd','analisa gas darah','blood gas','arterial blood gas','ags'],
  '89.14': ['eeg','elektroensefalogram','electroencephalogram'],
  '89.37': ['spirometri','spirometry','fev','fvc','uji fungsi paru'],

  // ── LABORATORIUM ──
  '90.59': ['lab','darah','leukosit','hemoglobin','hematokrit','trombosit','eritrosit',
            'crp','led','troponin','bnp','gds','gdp','gd2pp','hba1c','kreatinin','ureum',
            'sgot','sgpt','bilirubin','albumin','natrium','kalium','klorida','kolesterol',
            'trigliserida','ldl','hdl','kimia darah','darah rutin','cbc','pemeriksaan darah',
            'hasil lab','nilai lab','rapid test','rapid antigen','rapid antibodi','serologi',
            'swab darah','pemeriksaan rapid'],
  '90.41': ['kultur sputum','sputum culture','kultur dahak','biakan sputum','pcr','swab nasofaring','swab tenggorok','bta sputum','sputum bta'],
  '90.54': ['kultur darah','blood culture','biakan darah'],
  '90.29': ['kultur urin','urine culture','biakan urin'],
  '91.31': ['urinalisis','urin rutin','urinalysis','urine rutin','pemeriksaan urin'],
  '91.49': ['histopatologi','pa ','patologi anatomi','biopsi','histologi'],

  // ── TINDAKAN PERNAPASAN ──
  '93.94': ['nebulisasi','nebulizer','inhalasi','nebul'],
  '93.96': ['oksigen','o2 ','nasal kanul','masker oksigen','nasal prong','oxygen','suplemen oksigen','pemberian o2'],
  '93.91': ['ippb','intermittent positive pressure'],
  '96.04': ['intubasi','endotracheal tube','ett','intubation','pasang ett'],
  '96.70': ['ventilator','mechanical ventilation','ventilasi mekanik','ventilasi invasif'],
  '33.22': ['bronkoskopi','bronchoscopy','bronkos','fiber optic bronchoscopy'],
  '33.23': ['bronkoskopi terapeutik','therapeutic bronchoscopy'],

  // ── TINDAKAN JANTUNG ──
  '00.66': ['pci','angioplasti','balloon','ptca','kateterisasi intervensi','primary pci'],
  '36.06': ['stent','pemasangan stent','drug eluting stent'],
  '36.01': ['cabg','bypass','coronary artery bypass','bpas'],
  '37.21': ['kateterisasi jantung kanan','right heart cath'],
  '37.22': ['kateterisasi jantung kiri','left heart cath','coronary angiography','angiografi koroner'],
  '87.62': ['angiografi koroner','coronary angiography','kateterisasi jantung'],

  // ── TINDAKAN BEDAH UMUM ──
  '54.11': ['laparotomi','laparotomy','eksplorasi laparotomi'],
  '54.19': ['laparotomi','laparotomy'],
  '47.01': ['appendektomi laparoskopik','laparoscopic appendectomy','apendektomi laparoskopik'],
  '47.09': ['appendektomi','apendektomi','appendectomy','operasi usus buntu'],
  '51.22': ['kolesistektomi laparoskopik','laparoscopic cholecystectomy','lap chole'],
  '51.23': ['kolesistektomi','cholecystectomy','angkat kantung empedu'],
  '53.00': ['herniorrafi','hernia repair','repair hernia','herniorafi'],
  '53.05': ['hernia laparoskopik','laparoscopic hernia','repair hernia laparoskopik'],
  '46.10': ['kolostomi','colostomy'],
  '46.13': ['kolostomi permanen','permanent colostomy'],
  '45.73': ['hemikolektomi kanan','right hemicolectomy'],
  '45.75': ['hemikolektomi kiri','left hemicolectomy'],
  '52.7':  ['whipple','pancreaticoduodenectomy','pankreatikoduodenektomi'],

  // ── ENDOSKOPI ──
  '44.13': ['gastroskopi','gastroscopy','endoskopi atas','upper endoscopy','ugie'],
  '45.13': ['kolonoskopi','colonoscopy'],
  '45.23': ['endoskopi usus halus','small bowel endoscopy'],
  '52.14': ['ercp','endoscopic retrograde'],
  '51.11': ['ercp','erc','cholangiography'],

  // ── UROLOGI ──
  '57.6':  ['sistektomi total','total cystectomy'],
  '60.5':  ['turp','transurethral prostatectomy','prostatektomi transurethral'],
  '60.29': ['prostatektomi','prostatectomy'],

  // ── TINDAKAN ORTOPEDI ──
  '79.05': ['reduksi tertutup','closed reduction'],
  '79.15': ['orif','open reduction internal fixation','fiksasi interna'],
  '79.35': ['nail intramedular','intramedullary nail','im nail','nailing femur'],
  '79.36': ['nail tibia','tibia nail','im nail tibia'],
  '81.54': ['total hip replacement','thr','hip replacement','ganti sendi panggul'],
  '81.55': ['total knee replacement','tkr','knee replacement','ganti sendi lutut'],
  '77.35': ['osteotomi femur','osteotomy femur'],

  // ── TINDAKAN OBSTETRI ──
  '74.1':  ['sc','sectio','cesar','caesarean','operasi cesar','sctp','seksio sesarea'],
  '65.29': ['kistektomi','cystectomy','eksisi kista','angkat kista'],

  // ── TINDAKAN MATA ──
  '13.72': ['fakoemulsifikasi','phacoemulsification','phaco','iol','intraocular lens','lensa tanam'],
  '13.41': ['fakoemulsifikasi','phacoemulsification','phaco'],
  '13.71': ['ecce','extracapsular','ekstrakapsular'],
  '14.24': ['laser fotokoagulasi','photocoagulation','laser retina','laser fotokoagulasi retina'],
  '14.25': ['laser','fotokoagulasi','photocoagulation'],
  '16.49': ['enukleasi','enucleation','angkat bola mata'],
};

/**
 * Cek apakah prosedur yang dikoding AI ada kata kuncinya di teks input
 * @param {Array} procedures - array prosedur dari hasil AI
 * @param {string} inputText - teks klinis asli yang diinput user
 * @returns {Array} array warning untuk prosedur yang tidak terverifikasi
 */
function validateProcedures(procedures, inputText) {
  if (!procedures || procedures.length === 0) return [];
  const lowerInput = inputText.toLowerCase();
  const warnings = [];

  // Deteksi khusus 90.59: nilai lab numerik = bukti pemeriksaan dilakukan
  const LAB_NUMERIC_RE = /(hb|hemoglobin|leukosit|wbc|trombosit|platelet|hematokrit|eritrosit|gds|gdp|gd2pp|hba1c|kreatinin|ureum|sgot|sgpt|bilirubin|albumin|natrium|kalium|klorida|kolesterol|trigliserida|ldl|hdl|troponin|bnp|crp|led)\s*[:\s]\s*\d/i;
  const hasLabNumeric = LAB_NUMERIC_RE.test(inputText);

  for (const proc of procedures) {
    const keywords = PROC_KEYWORDS[proc.code];
    if (!keywords) continue; // kode tidak ada di map → skip, tidak bisa divalidasi

    // Khusus 90.59: lolos jika ada nilai numerik lab di teks
    if (proc.code === '90.59' && hasLabNumeric) continue;

    const found = keywords.some(kw => lowerInput.includes(kw.toLowerCase()));
    if (!found) {
      warnings.push({
        code: proc.code,
        description: proc.description,
        message: `<strong>${proc.code} — ${proc.description}</strong> tidak ditemukan di teks input. Kemungkinan halusinasi AI — verifikasi ulang!`
      });
    }
  }
  return warnings;
}
