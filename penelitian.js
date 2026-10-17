'use strict';
const questions = [
  'Saya ingin sering menggunakan sistem ini.',
  'Saya merasa sistem ini terlalu rumit.',
  'Saya merasa sistem ini mudah digunakan.',
  'Saya memerlukan bantuan tenaga teknis untuk menggunakan sistem ini.',
  'Saya merasa fungsi-fungsi sistem ini terintegrasi dengan baik.',
  'Saya merasa terdapat terlalu banyak ketidakkonsistenan pada sistem ini.',
  'Saya membayangkan kebanyakan orang dapat belajar menggunakan sistem ini dengan sangat cepat.',
  'Saya merasa sistem ini sangat merepotkan untuk digunakan.',
  'Saya merasa sangat percaya diri menggunakan sistem ini.',
  'Saya perlu mempelajari banyak hal sebelum mulai menggunakan sistem ini.'
];
const assessmentQuestions = [
  {id:'documentation_fit', aspect:'Kesesuaian dokumentasi', text:'Usulan kode diagnosis yang saya tinjau sesuai dengan diagnosis yang terdokumentasi pada kasus uji.'},
  {id:'code_specificity', aspect:'Spesifisitas kode', text:'Tingkat rincian kode yang diusulkan sesuai dengan informasi yang tersedia pada kasus uji.'},
  {id:'reasoning_clarity', aspect:'Kejelasan alasan', text:'Penjelasan sistem membantu saya memahami alasan usulan kode diagnosis.'},
  {id:'reference_traceability', aspect:'Keterlacakan referensi', text:'Referensi yang ditampilkan memudahkan saya menelusuri dasar usulan kode.'},
  {id:'warning_clarity', aspect:'Kejelasan peringatan', text:'Peringatan sistem membantu saya mengenali hasil yang memerlukan pemeriksaan lebih lanjut.'},
  {id:'review_support', aspect:'Dukungan verifikasi', text:'Informasi hasil sistem membantu saya melakukan verifikasi kode sebelum menentukan keputusan akhir.'}
];
function scoreSUS(answers) {
  if (answers.length !== 10 || answers.some(x => !Number.isInteger(x) || x < 1 || x > 5)) throw new Error('Lengkapi 10 jawaban dengan nilai 1–5.');
  return answers.reduce((sum, value, i) => sum + (i % 2 ? 5 - value : value - 1), 0) * 2.5;
}
questions.forEach((q, i) => {
  const field = document.createElement('fieldset');
  const legend = document.createElement('legend'); legend.textContent = `${i + 1}. ${q}`; field.append(legend);
  for (let n = 1; n <= 5; n++) {
    const label = document.createElement('label'); const input = document.createElement('input');
    input.type = 'radio'; input.name = `sus${i + 1}`; input.value = n; input.required = true;
    label.append(input, ` ${n}`); field.append(label);
  }
  document.getElementById('items').append(field);
});
assessmentQuestions.forEach((q, i) => {
  const field = document.createElement('fieldset');
  const legend = document.createElement('legend'); legend.textContent = `B${i + 1}. ${q.aspect}: ${q.text}`; field.append(legend);
  for (const value of ['1','2','3','4','5','NA']) {
    const label = document.createElement('label'); const input = document.createElement('input');
    input.type = 'radio'; input.name = `assessment_${q.id}`; input.value = value; input.required = true;
    label.append(input, value === 'NA' ? ' Tidak dapat menilai' : ` ${value}`); field.append(label);
  }
  document.getElementById('assessmentItems').append(field);
});
const invite = new URLSearchParams(location.hash.slice(1)).get('invite') || '';
const survey = document.getElementById('survey');
const surveyStatus = document.getElementById('surveyStatus');
if (location.protocol === 'file:') surveyStatus.textContent = 'Pratinjau lokal: pengiriman memerlukan website online.';
else if (!invite) surveyStatus.textContent = 'Untuk mengirim jawaban, buka tautan undangan dari peneliti.';
survey.addEventListener('submit', async e => {
  e.preventDefault();
  if (!/^[a-f0-9]{64}$/.test(invite)) {surveyStatus.textContent='Buka tautan undangan dari peneliti terlebih dahulu.'; return;}
  if (location.protocol === 'file:') {surveyStatus.textContent='Kirim jawaban melalui website online, bukan file lokal.'; return;}
  const f=new FormData(survey); const button=survey.querySelector('button[type=submit]');
  if (button.disabled) return;
  button.disabled=true; surveyStatus.textContent='Mengirim jawaban…';
  const record={invite,role:f.get('role'),experience:f.get('experience'),answers:questions.map((_,i)=>Number(f.get('sus'+(i+1)))),assessment:Object.fromEntries(assessmentQuestions.map(q=>[q.id,f.get('assessment_'+q.id)])),feedback:f.get('feedback').trim(),consent:f.get('consent')==='on'};
  try {
    const response=await fetch('/api/research',{method:'POST',headers:{'Content-Type':'application/json'},body:JSON.stringify(record),signal:AbortSignal.timeout(20000)});
    const result=await response.json();
    if (!response.ok) throw new Error(result.error || 'Jawaban belum tersimpan.');
    surveyStatus.textContent='Terima kasih. Jawaban tersimpan. Nomor bukti: '+result.receipt;
    survey.querySelectorAll('input,select,textarea').forEach(el=>el.disabled=true);
  } catch(error) {surveyStatus.textContent=error.message+' Jika koneksi terputus setelah mengirim, hubungi peneliti untuk memastikan penerimaan.';button.disabled=false;}
});
