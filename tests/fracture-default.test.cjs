const assert=require('node:assert/strict');
const fs=require('node:fs');
(async()=>{
 const rules=await import('data:text/javascript;base64,'+Buffer.from(fs.readFileSync(require('node:path').join(__dirname,'../coding-rules.js'),'utf8')).toString('base64'));
 function classify(code,quote,input=quote){const diagnosis={code,documentation_quote:quote};const warnings=rules.applyFractureDefaults({diagnoses:[diagnosis]},input);return {diagnosis,warnings};}
 const html=fs.readFileSync(require('node:path').join(__dirname,'../index.html'),'utf8');
 const preset=html.match(/5: `([\s\S]*?)`\s*,/)[1];
 const original='Fraktur shaft femur sinistra.';
 const result=classify('S72.3',original,preset);
 assert.equal(result.diagnosis.fracture_status.classification,'closed');
 assert.equal(result.diagnosis.fracture_status.basis,'icd10_default');
 assert.equal(result.diagnosis.fracture_status.clinical_confirmation,false);
 assert.equal(result.diagnosis.documentation_quote,original);
 assert.equal(result.diagnosis.code,'S72.3');
 assert.match(result.warnings[0].message,/bukan konfirmasi klinis/);
 for(const quote of ['Fraktur femur terbuka','Open fracture of femur','Compound fracture of femur']){
  const {diagnosis}=classify('S72.3',quote);assert.equal(diagnosis.fracture_status.classification,'open');assert.equal(diagnosis.fracture_status.basis,'documented');
 }
 assert.equal(classify('S72.3','Fraktur femur tertutup').diagnosis.fracture_status.basis,'documented');
 assert.equal(classify('S72.3','Fraktur femur','Fraktur femur. Dilakukan open reduction and internal fixation.').diagnosis.fracture_status.basis,'icd10_default');
 assert.equal(classify('S72.3','Fraktur femur dengan luka terbuka pada tangan').diagnosis.fracture_status.classification,'closed');
 const multiple={diagnoses:[{code:'S72.3',documentation_quote:'Fraktur femur tertutup'},{code:'S52.2',documentation_quote:'Fraktur ulna terbuka'}]};
 rules.applyFractureDefaults(multiple,'Fraktur femur tertutup; Fraktur ulna terbuka');
 assert.deepEqual(multiple.diagnoses.map(d=>d.fracture_status.classification),['closed','open']);
 assert.equal(classify('S72.3','Fraktur femur','Fraktur femur tertutup; Fraktur femur terbuka').diagnosis.fracture_status.basis,'conflicting_documentation');
 assert.equal(classify('S72.30','Fraktur shaft femur').diagnosis.code,'S72.30');
 assert.equal(classify('M84.4','Fraktur patologis femur').diagnosis.fracture_status,undefined);
 assert.equal(classify('S72.3','Fraktur femur terbuka','Fraktur femur').diagnosis.fracture_status.classification,'unverified');
 assert.match(rules.buildPrompt(preset,''),/klasifikasikan tertutup menurut default ICD-10/);
 console.log('PASS: exact fracture preset, documented open/closed, per-injury isolation, ORIF, conflicts, provenance and IM-code preservation');
})();
