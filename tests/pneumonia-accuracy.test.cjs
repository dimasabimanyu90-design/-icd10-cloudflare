const assert = require('node:assert/strict');
const fs = require('node:fs');
(async () => {
 const source = fs.readFileSync(require('node:path').join(__dirname,'../coding-rules.js'),'utf8');
 const rules = await import('data:text/javascript;base64,'+Buffer.from(source).toString('base64'));
 const text = 'Dokter SpP mencatat diagnosis pneumonia lobus kanan atas, community-acquired. Foto thorax menunjukkan infiltrat pada lobus kanan atas. Riwayat diabetes mellitus tipe 2 terkontrol (GDS 145, HbA1c 7.2%).';
 const wrong = {diagnoses:[{code:'J18.0',lead_term:'Pneumonia',documentation_quote:'pneumonia lobus kanan atas',who_validation:{valid:true}}],procedures:[]};
 assert.ok(rules.auditClinicalCoding(wrong,text).length);
 assert.equal(wrong.diagnoses[0].clinical_validation.status,'review_required');
 const index = {valid:true,results:[{code:'J18.0',index_terms:['Bronchopneumonia','Pneumonia (acute) - broncho, bronchial (involving lobes) (lobar)']}]};
 assert.equal(rules.buildWHOIndexPath(index,{code:'J18.0',lead_term:'Pneumonia'}),null);
 assert.equal(rules.buildWHOIndexPath(index,{code:'J18.0',lead_term:'Bronchopneumonia'}).status,'verified');
 const blocked = await rules.resolveWHOIndexReferences(wrong.diagnoses[0],{},async()=>index);
 assert.equal(blocked.status,'unverified');
 assert.match(blocked.reason,/bertentangan/);
 for(const [code,quote] of [['J18.0','bronkopneumonia'],['J18.1','pneumonia lobaris'],['J18.9','pneumonia lobus kanan atas']]) {
  const parsed={diagnoses:[{code,documentation_quote:quote}],procedures:[]};
  assert.equal(rules.auditClinicalCoding(parsed,quote).length,0);
 }
 const labs = {diagnoses:[],procedures:[{code:'90.59',documentation_quote:'GDS 145, HbA1c 7.2%'}]};
 assert.ok(rules.auditClinicalCoding(labs,text).some(x=>x.message.includes('GDS/HbA1c')));
 assert.match(rules.buildPrompt(text,''),/J18.0 = bronchopneumonia/);
 assert.match(rules.buildPrompt(text,''),/J18.1 = lobar pneumonia/);
 assert.doesNotMatch(rules.buildPrompt(text,''),/J18.1=bronchopneumonia|SpO2<95% akut/);
 const ambiguous={diagnoses:[{role:'DU',code:'J18.1',documentation_quote:'pneumonia lobus kanan atas',confidence:95}],procedures:[]};
 const correction = rules.auditClinicalCoding(ambiguous, text + ' Tidak ada kuman spesifik yang disebutkan.');
 assert.equal(ambiguous.diagnoses[0].code,'J18.9');
 assert.equal(ambiguous.diagnoses[0].coding_adjustment.original_code,'J18.1');
 assert.ok(correction.some(x=>x.message.includes('dikoreksi sementara')));
 const html = fs.readFileSync(require('node:path').join(__dirname,'../index.html'),'utf8');
 const preset = html.match(/7: `([\s\S]*?)`\s*\n};/)[1];
 const fromPreset = {diagnoses:[{role:'DU',code:'J18.1',documentation_quote:'pneumonia lobus kanan atas, community-acquired.'}],procedures:[]};
 rules.auditClinicalCoding(fromPreset,preset);
 assert.equal(fromPreset.diagnoses[0].code,'J18.9', 'Actual Pneumonia iDRG button must normalize unsupported J18.1');
 for (const wording of ['Dokter TIDAK menyebut kuman spesifik.', 'Dokter tidak menyebutkan organisme spesifik.', 'Patogen belum diketahui. Kuman belum teridentifikasi.', 'Tidak ada kuman spesifik.']) {
  const item = {diagnoses:[{code:'J18.1',documentation_quote:'pneumonia lobus kanan atas, community-acquired.'}],procedures:[]};
  rules.auditClinicalCoding(item, 'Diagnosis pneumonia lobus kanan atas, community-acquired. '+wording);
  assert.equal(item.diagnoses[0].code,'J18.9',wording);
 }
 const unicodeQuote = {diagnoses:[{code:'J18.1',documentation_quote:'pneumonia lobus kanan atas, community-acquired.'}],procedures:[]};
 rules.auditClinicalCoding(unicodeQuote, preset.replace('community-acquired','community‑acquired'));
 assert.equal(unicodeQuote.diagnoses[0].code,'J18.9');
 for (const [quote,expected] of [['pneumonia lobaris','J18.1'],['bronkopneumonia','J18.0']]) {
  const valid={diagnoses:[{code:expected,documentation_quote:quote}],procedures:[]};
  rules.auditClinicalCoding(valid, quote+'. Dokter TIDAK menyebut kuman spesifik.');
  assert.equal(valid.diagnoses[0].code,expected);
 }
 const knownCause={diagnoses:[{code:'J18.1',documentation_quote:'pneumonia lobus kanan atas, community-acquired.'}],procedures:[]};
 rules.auditClinicalCoding(knownCause,'pneumonia lobus kanan atas, community-acquired. Dokter menyebut kuman spesifik.');
 assert.equal(knownCause.diagnoses[0].code,'J18.1');
 assert.equal(knownCause.diagnoses[0].clinical_validation.status,'review_required');
 console.log('PASS: pneumonia documentation, essential source branches, wrong-code block, laboratory evidence');
})();
