const {test}=require('node:test'),assert=require('node:assert/strict');
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const root=path.resolve(__dirname,'..');
const ctx=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout});
require('./load-coding.cjs')(ctx,root);
const clarification='Klarifikasi kepada DPJP belum berhasil';
function fixture(rule,recorded,proposed,code,extra={}) {
 const context={mb_rule:rule,documented_du_quote:'Diagnosis utama: '+recorded,mb_trigger_quote:extra.mb_trigger_quote || recorded,clarification_quote:clarification,...extra};
 const text=['Diagnosis utama: '+recorded,'Diagnosis sekunder: '+proposed,...Object.entries(extra).filter(([k,v])=>k.endsWith('_quote')).map(([k,v])=>v),clarification].join('. ')+'.';
 const parsed={diagnoses:[{role:'DU',code,documentation_quote:proposed}],procedures:[],ics_context:context};
 return {parsed,text};
}
const positive={
 MB1:()=>fixture('MB1','Sinusitis akut minor','Karsinoma endoserviks','C53.0',{mb_minor_quote:'Sinusitis akut minor',mb_care_quote:'Karsinoma endoserviks menjadi fokus perawatan dengan histerektomi dilakukan'}),
 MB2:()=>fixture('MB2','Katarak, Meningitis stafilokokus','Meningitis stafilokokus','G00.3',{mb_combination_quote:'Kondisi-kondisi DU tidak dapat dikode bersamaan',mb_care_quote:'Meningitis stafilokokus adalah alasan utama perawatan neurologi'}),
 MB3:()=>fixture('MB3','Hematuria','Papillomata kandung kemih','D41.4',{mb_relation_quote:'Hematuria merupakan gejala dari Papillomata kandung kemih',mb_care_quote:'Papillomata kandung kemih diobati dengan eksisi diatermi'}),
 MB4:()=>fixture('MB4','Cerebrovascular accident','Perdarahan otak','I61.9',{mb_specificity_quote:'Perdarahan otak merupakan bentuk spesifik Cerebrovascular accident'}),
 MB5:()=>fixture('MB5','Kolesistitis akut atau pankreatitis akut','Kolesistitis akut','K81.0',{mb5_mode:'alternative_diagnoses',first_alternative_code:'K81.0'})
};
for(const [rule,make] of Object.entries(positive)) {
 test(`${rule}: documented support still requires coder review`,()=>{
  const {parsed,text}=make();const before=JSON.stringify(parsed);const out=ctx.auditMBReselection(parsed,text);
  assert.equal(out.status,'documentary_support_only',JSON.stringify(out.questions));assert.equal(out.clinical_validity,'not_certified');
  assert.equal(JSON.stringify(parsed),before,'no automatic DU/code mutation');
  assert.equal(ctx.auditICSContext(parsed,text).status,'review_required');
 });
 test(`${rule}: missing DPJP clarification stays unresolved`,()=>{
  const {parsed,text}=make();parsed.ics_context.clarification_quote=null;
  const out=ctx.auditMBReselection(parsed,text);assert.equal(out.status,'clarification_required');assert.ok(out.questions.some(q=>q.includes('DPJP')));
 });
}
test('MB3 does not accept unrelated diseases, negated relations, forged quotes or planned treatment',()=>{
 for(const alteration of [
  c=>c.mb_relation_quote='Hematuria bukan gejala dari Papillomata kandung kemih',
  c=>c.mb_relation_quote='Kejang demam merupakan gejala dari anemia',
  c=>c.mb_care_quote='Rencana Papillomata kandung kemih diobati besok'
 ]){const {parsed,text}=positive.MB3();alteration(parsed.ics_context);const input=text+' '+parsed.ics_context.mb_relation_quote+'. '+parsed.ics_context.mb_care_quote;assert.equal(ctx.auditMBReselection(parsed,input).status,'clarification_required');}
 const {parsed,text}=positive.MB3();parsed.ics_context.mb_relation_quote='Kutipan ini tidak pernah ditulis';assert.equal(ctx.auditMBReselection(parsed,text).status,'clarification_required');
});
test('MB4 unrelated specificity cannot pass using a valid but irrelevant quote',()=>{
 const {parsed,text}=positive.MB4();parsed.ics_context.mb_specificity_quote='Diabetes merupakan bentuk spesifik penyakit metabolik';
 assert.equal(ctx.auditMBReselection(parsed,text+' '+parsed.ics_context.mb_specificity_quote).status,'clarification_required');
});
test('MB5 first-alternative check uses source order rather than AI code agreement',()=>{
 const {parsed,text}=positive.MB5();parsed.diagnoses[0]={role:'DU',code:'K85.9',documentation_quote:'pankreatitis akut'};parsed.ics_context.first_alternative_code='K85.9';
 const out=ctx.auditMBReselection(parsed,text);assert.equal(out.checks.find(c=>c.id==='mb5_first_source_choice').status,'clarification_required');
 const plus=text.replaceAll(' atau ',' + ');assert.equal(ctx.auditMBReselection(parsed,plus).status,'clarification_required');
});
test('MB5 symptom branch retains symptom, not a possible cause',()=>{
 const {parsed,text}=fixture('MB5','Sakit kepala mungkin karena stres atau sinusitis','Sakit kepala','R51',{mb5_mode:'symptom_with_possible_causes'});
 assert.equal(ctx.auditMBReselection(parsed,text).status,'documentary_support_only');
 parsed.diagnoses[0].documentation_quote='sinusitis';assert.equal(ctx.auditMBReselection(parsed,text).status,'clarification_required');
});
test('omission hints cover explicit patterns and changed DU without silently selecting MB',()=>{
 for(const make of Object.values(positive)) {const {parsed,text}=make();parsed.ics_context.mb_rule=null;const out=ctx.auditMBReselection(parsed,text);assert.equal(out.status,'possible_omission');assert.equal(out.rule,null);}
 const out=ctx.auditMBReselection({diagnoses:[{role:'DU',code:'J18.9',documentation_quote:'Pneumonia'}]},'Diagnosis utama: Pneumonia. DS: DM.');assert.equal(out.status,'not_triggered');
 assert.equal(ctx.auditMBReselection({diagnoses:[]},'Tidak ada diagnosis tercatat.').status,'not_triggered');
});
test('normalizeModelResult allows evidence fields but drops forged review metadata',()=>{
 const {parsed}=positive.MB3();parsed.ics_policy={mb_review:{status:'approved'}};
 const out=ctx.normalizeModelResult(parsed);assert.equal(out.ics_context.mb_relation_quote,parsed.ics_context.mb_relation_quote);assert.equal(out.ics_policy,undefined);
});
test('UI renders source DU, proposal and clarification safely',()=>{
 const html=fs.readFileSync(path.join(root,'index.html'),'utf8');const ui=vm.createContext({currentLang:'id'});
 const start=html.indexOf('function escapeHTML(');vm.runInContext(html.slice(start,start+html.slice(start).indexOf('\n}'))+'\n}',ui);
 vm.runInContext(html.slice(html.indexOf('function renderMBReview('),html.indexOf('function renderResults(')),ui);
 const {parsed,text}=positive.MB3();const review=ctx.auditMBReselection(parsed,text);review.recorded_primary='<img src=x onerror=alert(1)>';review.questions=['<script>x</script>'];
 const output=ui.renderMBReview(review);assert.ok(output.includes('DU tercatat'));assert.ok(output.includes('Usulan DU'));assert.ok(output.includes('MB3'));assert.ok(output.includes('&lt;script&gt;'));assert.ok(!output.includes('<img'));assert.ok(!output.includes('<script>'));
 assert.equal(ui.renderMBReview({status:'not_triggered'}),'');
});
test('API replay recomputes MB review and blocks automatic success',async()=>{
 const {parsed,text}=positive.MB3();parsed.ics_context.mb_relation_quote=null;parsed.ics_policy={mb_review:{status:'approved'}};
 const api=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout,fetch:async url=>{
  if(String(url).includes('groq.com')) return Response.json({choices:[{message:{content:JSON.stringify(parsed)}}]});
  if(String(url).includes('who-index'))return Response.json({valid:true,results:[]});
  return Response.json({valid:true,entity:{title:'Reference title'}});
 }});require('./load-coding.cjs')(api,root);
 const response=await api.onRequestPost({request:new Request('https://test/api/claude',{method:'POST',body:JSON.stringify({clinicalText:text})}),env:{GROQ_API_KEY:'test'}});
 assert.equal(response.status,200);const result=JSON.parse((await response.json()).text);
 assert.equal(result.ics_policy.mb_review.status,'clarification_required');assert.equal(result.finalized,false);assert.equal(result.reference_checks_passed,false);
 assert.ok(result.validations.some(v=>v.message.includes('hubungan')||v.message.includes('gejala/tanda/masalah')));
});

test('MB1/MB3 require source DS; MB2 choice must occur in source DU list',()=>{
 for(const rule of ['MB1','MB3']){const {parsed,text}=positive[rule]();const out=ctx.auditMBReselection(parsed,text.replace('Diagnosis sekunder:','Catatan:'));assert.equal(out.checks.find(c=>c.id==='source_secondary_condition').status,'clarification_required');}
 const {parsed,text}=positive.MB2();parsed.diagnoses[0].documentation_quote='Pneumonia';const out=ctx.auditMBReselection(parsed,text+'. Pneumonia.');assert.equal(out.checks.find(c=>c.id==='choice_in_recorded_primary').status,'clarification_required');
});
