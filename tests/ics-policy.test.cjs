const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..');
const ctx=vm.createContext({Response,URL,AbortSignal,console});
require('./load-coding.cjs')(ctx, root);
const audit=(parsed,text)=>ctx.auditICSContext(parsed,text);
let out=audit({diagnoses:[{role:'DU',code:'C53.0',documentation_quote:'Karsinoma endoserviks'}],ics_context:{documented_du_quote:'Diagnosis utama: sinusitis akut',mb_rule:'MB1',mb_trigger_quote:'Histerektomi dilakukan'}},'Diagnosis utama: sinusitis akut. Karsinoma endoserviks. Histerektomi dilakukan.');
assert.ok(out.checks.every(c=>c.status==='evidence_present'));assert.equal(out.clinical_review_required,true);assert.ok(out.warnings.some(w=>w.message.includes('Rule MB1')));
for(const mb of ['MB2','MB3','MB4']) {
 out=audit({diagnoses:[{role:'DU',code:'I61.9',documentation_quote:'Perdarahan otak'}],ics_context:{documented_du_quote:'Diagnosis utama CVA',mb_rule:mb,mb_trigger_quote:'Perdarahan otak'}},'Diagnosis utama CVA. Perdarahan otak.');
 assert.ok(out.warnings.some(w=>w.message.includes('Rule '+mb)));assert.equal(out.clinical_review_required,true);
}
out=audit({diagnoses:[{role:'DU',code:'K85.9',documentation_quote:'pankreatitis akut'}],ics_context:{documented_du_quote:'Diagnosis utama: kolesistitis akut atau pankreatitis akut',mb_rule:'MB5',mb_trigger_quote:'kolesistitis akut atau pankreatitis akut',mb5_mode:'alternative_diagnoses',first_alternative_code:'K81.0'}},'Diagnosis utama: kolesistitis akut atau pankreatitis akut.');
assert.equal(out.checks.find(c=>c.id==='mb5_first_alternative').status,'review_required');
out=audit({diagnoses:[{role:'DU',code:'R51',documentation_quote:'Sakit kepala'}],ics_context:{documented_du_quote:'Sakit kepala mungkin karena stres atau sinusitis',mb_rule:'MB5',mb_trigger_quote:'Sakit kepala mungkin karena stres atau sinusitis',mb5_mode:'symptom_with_possible_causes'}},'Sakit kepala mungkin karena stres atau sinusitis.');
assert.equal(out.checks.find(c=>c.id==='mb5_branch').status,'evidence_present');assert.equal(out.clinical_review_required,true);
out=audit({diagnoses:[{role:'DU',documentation_quote:'kutipan dibuat AI'},{role:'DU'}]},'Diagnosis ditulis dokter.');
assert.equal(out.checks.find(c=>c.id==='single_primary').status,'review_required');assert.equal(out.checks.find(c=>c.id==='diagnosis_documentation_0').status,'review_required');
out=audit({diagnoses:[{role:'DU',code:'C34.1'}],procedures:[]},'Pasien rawat jalan untuk kemoterapi injeksi.');
assert.equal(out.checks.find(c=>c.id==='documented_chemo_injection').status,'review_required');
out=audit({diagnoses:[{role:'DU',code:'C34.1'}],procedures:[]},'Pasien rawat inap untuk kemoterapi injeksi.');assert.ok(!out.checks.some(c=>c.id==='outpatient_chemo_primary'));
out=audit({diagnoses:[{role:'DU',code:'Z51.1'}],procedures:[]},'Pasien rawat jalan untuk kemoterapi oral.');assert.ok(!out.checks.some(c=>c.id==='documented_chemo_injection'));
const prompt=ctx.buildPrompt('Contoh rawat jalan kemoterapi oral dan sakit kepala','');
assert.ok(prompt.includes('MB5'));assert.ok(prompt.includes('first_alternative_code'));assert.ok(prompt.includes('documentation_quote'));assert.ok(prompt.includes('RAWAT JALAN saja'));
console.log('PASS: MB1–MB5 evidence checks, both MB5 branches, multiple DU, fabricated quotes, setting/route boundaries and sourced prompt');

