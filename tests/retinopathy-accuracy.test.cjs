const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..'),ctx=vm.createContext({Response,URL,AbortSignal,console});require('./load-coding.cjs')(ctx,root);
const clinical='Tn. C, 52 thn. DM tipe 2 sejak 10 tahun, penglihatan kabur progresif 6 bulan.\nGDS 380, HbA1c 11.5%. Funduskopi: proliferative diabetic retinopathy ODS.\nDiagnosis: DM tipe 2 dengan retinopati diabetik proliferatif bilateral.\nTindakan: Laser fotokoagulasi retina OD.';
const model=()=>({diagnoses:[{role:'primary',code:'E11.32',description:'Diabetes mellitus type 2 with proliferative diabetic retinopathy'}],procedures:[{code:'67.01',description:'Retinal photocoagulation'}]});
function run(text=clinical){const p=ctx.normalizeModelResult(model());ctx.auditClinicalCoding(p,text);return p;}
let p=run();assert.equal(p.diagnoses[0].role,'DU');assert.equal(p.diagnoses[0].code,'E11.3');assert.equal(p.diagnoses[1].code,'H36.0');assert.equal(p.diagnoses[1].role,'DS');assert.equal(p.diagnoses[1].paired_with,'E11.3');assert.equal(p.procedures[0].code,'14.24');assert.ok(clinical.includes(p.diagnoses[0].documentation_quote));assert.ok(clinical.includes(p.procedures[0].documentation_quote));assert.equal(p.diagnoses[0].clinical_validation.status,'review_required');
ctx.auditClinicalCoding(p,clinical);assert.equal(p.diagnoses.length,2,'idempotent pair insertion');
for(const text of [clinical.replaceAll('tipe 2','tipe 1'),clinical.replaceAll('retinopati diabetik','katarak diabetik'),clinical.replace('Diagnosis: DM','Diagnosis: Suspek DM'),clinical.replace('Diagnosis: DM','Diagnosis: Tidak ada DM'), 'GDS 380, HbA1c 11.5%. Penglihatan kabur.']){
 p=run(text);assert.equal(p.diagnoses[0].code,'E11.32',text);assert.equal(p.diagnoses.length,1);assert.equal(p.procedures[0].code,'67.01');
}
for(const text of [clinical.replace('Tindakan: Laser','Rencana: Laser'),clinical.replace('Tindakan: Laser','Tindakan dibatalkan: Laser'),clinical+' Robekan retina.']){p=run(text);assert.equal(p.procedures[0].code,'67.01',text);}
p=ctx.normalizeModelResult({diagnoses:[{role:' secondary ',code:'H36.0'},{role:'unknown',code:'E11.3'}]});assert.equal(p.diagnoses[0].role,'DS');assert.equal(p.diagnoses[1].role,'unknown');
p=ctx.normalizeModelResult(model());p.diagnoses[0].role='DS';ctx.auditClinicalCoding(p,clinical);assert.ok(p.diagnoses.every(x=>x.role==='DS'),'do not promote DS to DU');
p=ctx.normalizeModelResult(model());p.diagnoses[0].documentation_quote='fabricated';ctx.auditClinicalCoding(p,clinical);assert.equal(p.diagnoses[0].code,'E11.32');
p=ctx.normalizeModelResult({diagnoses:[{role:'DU',code:'H36.0'},{role:'DS',code:'E11'}],procedures:[]});ctx.auditClinicalCoding(p,clinical);assert.equal(p.diagnoses.find(d=>d.code==='E11.3').role,'DU');assert.equal(p.diagnoses.find(d=>d.code==='H36.0').role,'DS');
console.log('PASS: reported retinopathy case, role aliases, WHO pair, retinal laser, repeat safety, no inferred diabetes/retinopathy, canceled/planned procedures, type conflict and invalid quotes');
