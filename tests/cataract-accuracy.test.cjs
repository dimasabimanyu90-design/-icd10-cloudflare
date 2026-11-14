const assert = require('node:assert/strict');
const fs = require('node:fs');
const path = require('node:path');

(async () => {
  const source = fs.readFileSync(path.join(__dirname, '../coding-rules.js'), 'utf8');
  const rules = await import('data:text/javascript;base64,' + Buffer.from(source).toString('base64'));

  const input = 'Katarak senilis matur pada mata kanan';
  const parsed = { diagnoses: [{ role: 'DU', code: 'H25.4', code_system: 'WHO_ICD10_2010',
    documentation_quote: input, lead_term: 'Cataract' }], procedures: [] };
  const warnings = rules.auditClinicalCoding(parsed, input);
  assert.equal(parsed.diagnoses[0].code, 'H25.9');
  assert.equal(parsed.diagnoses[0].coding_adjustment.original_code, 'H25.4');
  assert.equal(parsed.diagnoses[0].coding_adjustment.rule, 'who2010_senile_mature_not_hypermature');
  assert.ok(warnings.some(w => w.message.includes('H25.9')));
  assert.equal(parsed.diagnoses[0].code.includes('R'), false, 'WHO 2010 H25 code must not encode right-eye laterality');

  const hypermatureInput = 'Katarak senilis hipermatur (Morgagnian) pada mata kanan';
  const hypermature = { diagnoses: [{ code: 'H25.2', code_system: 'WHO_ICD10_2010',
    documentation_quote: hypermatureInput }], procedures: [] };
  rules.auditClinicalCoding(hypermature, hypermatureInput);
  assert.equal(hypermature.diagnoses[0].code, 'H25.2', 'explicit hypermature/Morgagnian remains H25.2');

  const nuclearInput = 'Katarak senilis nuklear pada mata kanan';
  const nuclear = { diagnoses: [{ code: 'H25.1', code_system: 'WHO_ICD10_2010',
    documentation_quote: nuclearInput }], procedures: [] };
  rules.auditClinicalCoding(nuclear, nuclearInput);
  assert.equal(nuclear.diagnoses[0].code, 'H25.1', 'explicit nuclear morphology remains H25.1');

  const unrelated = { diagnoses: [{ code: 'H25.4', code_system: 'WHO_ICD10_2010',
    documentation_quote: 'Diagnosis katarak tanpa keterangan matur.' }], procedures: [] };
  rules.auditClinicalCoding(unrelated, 'Diagnosis katarak tanpa keterangan matur.');
  assert.equal(unrelated.diagnoses[0].code, 'H25.4', 'do not rewrite without senile-mature evidence');

  const prompt = rules.buildPrompt(input, '');
  assert.match(prompt, /Katarak senilis matur/);
  assert.match(prompt, /Jangan membuat H25\.4/);
  console.log('PASS: WHO 2010 senile mature cataract maps provisionally to H25.9; hypermature and nuclear cases preserved');
})().catch(error => { console.error(error); process.exitCode = 1; });
