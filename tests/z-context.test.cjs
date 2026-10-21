const {test}=require('node:test'),assert=require('node:assert/strict');
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const root=path.resolve(__dirname,'..');
const ctx=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout});
require('./load-coding.cjs')(ctx,root);
function audit(code,quote,text=quote){const parsed={diagnoses:[{code,role:'DS',documentation_quote:quote}],procedures:[]};ctx.auditClinicalCoding(parsed,text);return parsed.diagnoses[0];}
test('family-history evidence is accepted only for its category, not active/personal disease',()=>{
 assert.equal(audit('Z83.3','RPK: DM pada ayah').clinical_validation.status,'no_targeted_contradiction');
 for(const code of ['E14.9','Z86.3'])assert.equal(audit(code,'RPK: DM pada ayah').clinical_validation.status,'review_required');
 assert.equal(audit('Z83.3','DM','RPK:\nDM\nDiagnosis: pneumonia').clinical_validation.status,'no_targeted_contradiction');
 assert.equal(audit('Z83.3','Diagnosis: DM').clinical_validation.status,'review_required');
});
test('history exceptions cannot bypass negation, uncertainty or forged evidence',()=>{
 for(const q of ['RPK: DM disangkal','RPK: DM (-)','Suspek riwayat keluarga DM','Tidak ada riwayat keluarga DM'])assert.equal(audit('Z83.3',q).clinical_validation.status,'review_required',q);
 assert.equal(audit('Z83.3','RPK: DM pada ayah','Tidak ada catatan keluarga').clinical_validation.status,'review_required');
});
test('personal history needs explicit past and inactive context without inferring recovery',()=>{
 assert.equal(audit('Z86.1','RPD: tuberkulosis, pengobatan selesai, dinyatakan sembuh').clinical_validation.status,'no_targeted_contradiction');
 assert.equal(audit('Z86.3','RPD: DM').clinical_validation.status,'review_required');
 assert.equal(audit('Z86.1','RPK: tuberkulosis pada ayah, sembuh').clinical_validation.status,'review_required');
 assert.equal(audit('Z86.1','Tuberkulosis sembuh').clinical_validation.status,'review_required','no inferred personal-history scope');
});
test('Z scope stays documentary and never auto-inserts codes or claims clinical validity',()=>{
 const p={diagnoses:[{code:'E14.9',documentation_quote:'DM disangkal'}],procedures:[]};ctx.auditClinicalCoding(p,'DM disangkal');
 assert.equal(p.diagnoses.length,1);assert.equal(p.diagnoses[0].code,'E14.9');
 const z=audit('Z93.3','Status kolostomi masih terpasang');
 assert.equal(z.z_context.clinical_validity,'not_certified');assert.equal(z.z_context.review_required,true);
 assert.equal(audit('Z99.2','CKD').clinical_validation.status,'review_required');
});
test('prompt covers Z purposes with no forced status or DU/DS and preserved relevance checks',()=>{
 const prompt=ctx.buildPrompt('Pasien kontrol penyakit aktif. RPK: DM pada ayah.','');
 for(const text of ['Z bukan selalu DS','RPD saja tidak membuktikan','Kata \'kontrol\' saja','DS tetap membutuhkan bukti relevansi','jangan menambahkan Z pada setiap pasien'])assert.ok(prompt.includes(text),text);
 const p={diagnoses:[{role:'DS',code:'Z83.3',documentation_quote:'RPK: DM pada ayah'}],procedures:[]};
 const result=ctx.auditICSContext(p,'RPK: DM pada ayah');
 assert.ok(result.checks.some(c=>c.id==='secondary_relevance_0'&&c.status==='review_required'));
});
test('API replay preserves supported history without certifying eligibility',async()=>{
 const model={diagnoses:[{role:'DS',code:'Z83.3',code_system:'WHO_ICD10_2010',documentation_quote:'RPK: DM pada ayah',lead_term:'History'}],procedures:[],validations:[]};
 const api=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout,fetch:async url=>{
 if(String(url).includes('groq.com'))return Response.json({choices:[{message:{content:JSON.stringify(model)}}]});
 if(String(url).includes('who-index'))return Response.json({valid:true,results:[{code:'Z83.3',title:'Family history of diabetes mellitus',index_terms:['History']}]});
 return Response.json({valid:true,entity:{title:'Family history of diabetes mellitus'}});
 }});require('./load-coding.cjs')(api,root);
 const r=await api.onRequestPost({request:new Request('https://test/api/claude',{method:'POST',body:JSON.stringify({clinicalText:'RPK: DM pada ayah. Pasien datang untuk pemeriksaan.'})}),env:{GROQ_API_KEY:'test'}});
 assert.equal(r.status,200);const out=JSON.parse((await r.json()).text);
 assert.equal(out.diagnoses[0].clinical_validation.status,'no_targeted_contradiction');
 assert.equal(out.diagnoses[0].z_context.kind,'family_history');
 assert.equal(out.finalized,false);assert.equal(out.reference_checks_passed,false);
});
