const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..'),ctx=vm.createContext({Response,URL,AbortSignal,console});require('./load-coding.cjs')(ctx,root);
const clinical='Diabetes melitus tipe 2 dengan komplikasi ulkus pedis dekstra.';
function run(text=clinical,code='E11.621',codeSystem='WHO_ICD10_2010'){
  const parsed=ctx.normalizeModelResult({diagnoses:[{role:'DU',code,code_system:codeSystem,description:'Type 2 diabetes mellitus with foot ulcer',documentation_quote:text}]});
  const warnings=ctx.auditClinicalCoding(parsed,text);
  return {diagnosis:parsed.diagnoses[0],warnings};
}
let result=run();
assert.equal(result.diagnosis.code,'E11.5');
assert.equal(result.diagnosis.coding_adjustment.rule,'who_e11_5_includes_diabetic_ulcer');
assert.equal(result.diagnosis.clinical_validation.status,'review_required');
assert.ok(result.warnings.some(w=>w.message.includes('E11.5')));
result=run(clinical,'E11.5');
assert.equal(result.diagnosis.code,'E11.5');
result=run('Diabetes melitus tipe 2 dengan ulkus pedis dekstra.','E11.621');
assert.equal(result.diagnosis.code,'E11.5','Indonesian wording should map to WHO E11.5');
result=run('Type 2 diabetes mellitus with diabetic foot ulcer.','E11.621');
assert.equal(result.diagnosis.code,'E11.5','English wording should map to WHO E11.5');
result=run('Diabetes melitus dengan komplikasi ulkus pedis.','E11.621');
assert.equal(result.diagnosis.code,'E11.621','type 2 must be explicit');
result=run('Diabetes melitus tipe 2. Ulkus pedis dekstra.','E11.621');
assert.equal(result.diagnosis.code,'E11.621','coexistence without documented linkage must not be mapped');
result=run('Diabetes melitus tipe 2 tanpa ulkus pedis.','E11.621');
assert.equal(result.diagnosis.code,'E11.621','negated ulcer must not be mapped');
result=run(clinical,'E11.621','ICD10_IM');
assert.equal(result.diagnosis.code,'E11.621','must not rewrite IM coding');
console.log('PASS: WHO E11.5 diabetic ulcer mapping, explicit type/linkage, negation, and IM separation');
