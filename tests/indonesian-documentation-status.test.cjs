const {test}=require('node:test');
const assert=require('node:assert/strict');
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const root=path.resolve(__dirname,'..');
const ctx=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout});
require('./load-coding.cjs')(ctx,root);
const cases=[
 ['DM','DM disangkal',false],
 ['DM','DM: disangkal',false],
 ['DM','Riwayat keluarga DM',false],
 ['DM disangkal','DM disangkal',false],
 ['DM','DM (-)',false],
 ['DM (-)','DM (-)',false],
 ['DM','RPK: DM',false],
 ['DM','Riwayat keluarga: DM',false],
 ['DM','RPK:\nDM pada ibu\nHT pada ayah',false],
 ['DM pada ibu','DM pada ibu',false],
 ['ISK','Suspek ISK dd batu saluran kemih',false],
 ['batu saluran kemih','Suspek ISK dd batu saluran kemih',false],
 ['ISK','dd: ISK',false],
 ['SC','Rencana SC',true],
 ['SC','Bekas SC',true],
 ['Bekas SC','Bekas SC',true],
 ['HD','HD dibatalkan',true],
 ['HD dibatalkan','HD dibatalkan',true],
 ['DM','RPD: DM',false]
];
for(const [quote,text,procedure] of cases) test(`review: ${text} / quote=${quote}`,()=>assert.ok(ctx.documentationIssue(quote,text,procedure)));
for(const [quote,text,procedure] of [
 ['DM','RPK: DM. Diagnosis pasien: DM',false],
 ['DM','RPK: HT\nDiagnosis: DM',false],
 ['ISK','Suspek ISK. Diagnosis akhir: ISK',false],
 ['SC','Rencana SC. SC telah dilakukan',true],
 ['HD','HD dilakukan. Tidak ada komplikasi',true],
 ['DM','Diagnosis: DM; RPK: HT',false],
 ['DM pada ibu hamil','Diagnosis: DM pada ibu hamil',false],
 ['pneumonia','Pneumonia. DM disangkal',false]
]) test(`separate affirmative occurrence: ${text}`,()=>assert.equal(ctx.documentationIssue(quote,text,procedure),null));
test('clinical audit flags rejected evidence and insulin SC mismatch without deleting proposals',()=>{
 const parsed={diagnoses:[{code:'E14.9',documentation_quote:'DM disangkal'}],procedures:[{code:'74.99',documentation_quote:'Insulin SC diberikan'}]};
 ctx.auditClinicalCoding(parsed,'DM disangkal. Insulin SC diberikan.');
 assert.equal(parsed.diagnoses[0].clinical_validation.status,'review_required');
 assert.equal(parsed.procedures[0].clinical_validation.status,'review_required');
 assert.equal(parsed.procedures[0].code,'74.99');
});

test('API replay exposes review warnings and prevents reference success for rejected evidence',async()=>{
 const model={diagnoses:[{role:'DU',code:'E14.9',code_system:'WHO_ICD10_2010',documentation_quote:'DM disangkal',lead_term:'Diabetes'}],procedures:[{code:'74.99',code_system:'ICD9_CM',documentation_quote:'Insulin SC diberikan'}],ics_context:{documented_du_quote:'DM disangkal'},validations:[]};
 const api=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout,fetch:async url=>{
   if(String(url).includes('groq.com'))return Response.json({choices:[{message:{content:JSON.stringify(model)}}]});
   if(String(url).includes('who-index'))return Response.json({valid:true,results:[{code:'E14.9',title:'Diabetes',index_terms:['Diabetes']}]});
   return Response.json({valid:true,entity:{title:'Diabetes'}});
 }});
 require('./load-coding.cjs')(api,root);
 const response=await api.onRequestPost({request:new Request('https://test/api/claude',{method:'POST',body:JSON.stringify({clinicalText:'DM disangkal. Insulin SC diberikan.'})}),env:{GROQ_API_KEY:'test'}});
 assert.equal(response.status,200);
 const result=JSON.parse((await response.json()).text);
 assert.equal(result.diagnoses[0].clinical_validation.status,'review_required');
 assert.equal(result.procedures[0].clinical_validation.status,'review_required');
 assert.equal(result.reference_checks_passed,false);
 assert.equal(result.finalized,false);
 assert.ok(result.validations.some(v=>v.type==='WARNING'&&v.message.includes('rute obat')));
});
