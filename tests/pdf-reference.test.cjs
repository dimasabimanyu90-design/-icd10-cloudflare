const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..'),queries=[];
const good={code:'S72.3',lead_term:'Fracture',modifiers_json:'["femur","shaft"]',path_text:'Fracture\n- femur\n-- shaft',raw_text:'- - shaft S72.3',pdf_page:1419,context_issue:''};
const bad={...good,lead_term:'Wrong continuation',context_issue:'missing_modifier_context'};
const db={prepare:sql=>({all:async()=>({results:[{file_name:'ICD10_2010.pdf',sha256:'hash',source_id:'source'}]}),bind:(...params)=>({all:async()=>{
 queries.push({sql,params});
 if(sql.includes('reference_sources'))return {results:[{file_name:'ICD10_2010.pdf',sha256:'hash',source_id:'source'}]};
 if(sql.includes('tabular_entries'))return {results:params[0]==='S72.3' ? [{code:'S72.3',title:'Fracture of shaft of femur',pdf_page:824}] : []};
 if(sql.includes('shared_subdivisions'))return {results:[{group_start:'E10',group_end:'E14',suffix:'3',title:'With ophthalmic complications',raw_text:'.3† With ophthalmic complications',pdf_page:186}]};
 if(sql.includes('index_entries')){
  assert.ok(sql.includes("context_issue = ''"));assert.ok(sql.includes("section = 'diagnosis'"));
  if(params[0]==='S72.3'||params[0]==='Fracture%')return {results:[good,bad].filter(x=>!x.context_issue)};
  if(params[0]==='E11.-')return {results:[{path_text:'Diabetes\n- type II',raw_text:'- type II E11.-',pdf_page:1331}]};
  return {results:[]};
 }
 return {results:[]};
}})})};
const ctx=vm.createContext({Request,Response,URL,AbortSignal,console,btoa,fetch:async()=>{throw Error('Network must not run when local sources exist')}});
vm.runInContext(fs.readFileSync(path.join(root,'functions/lib/who2010-pdf.js'),'utf8').replace(/export /g,''),ctx);
vm.runInContext(fs.readFileSync(path.join(root,'functions/api/who-index.js'),'utf8').replace(/^import [^;]+;\n/gm,'').replace(/export /g,''),ctx);
const indexEndpoint=ctx.onRequestGet;
require('./load-coding.cjs')(ctx,root);
(async()=>{
 let r=await indexEndpoint({request:new Request('https://test/api/who-index?term=Fracture&code=S72.3'),env:{ICD10_WHO_DB:db}});let d=await r.json();assert.equal(d.source,'UPLOADED_WHO2010_PDF');assert.equal(d.review_required,true);assert.equal(d.pdf_index_paths.length,1);assert.equal(d.pdf_index_paths[0].pdf_page,1419);assert.deepEqual(Array.from(d.pdf_index_paths[0].modifiers),['femur','shaft']);
 let resolved=await ctx.resolveWHOIndexReferences({code:'S72.3',lead_term:'Fracture',who_validation:{valid:true}},{},async()=>d);assert.equal(resolved.status,'unverified');assert.equal(resolved.source,'UPLOADED_WHO2010_PDF');assert.equal(resolved.index_paths[0].pdf_page,1419,'preserve page provenance without certifying branch');
 r=await indexEndpoint({request:new Request('https://test/api/who-index?term=Diabetes&code=E11.3'),env:{ICD10_WHO_DB:db}});d=await r.json();assert.equal(d.pdf_index_paths.length,0);assert.equal(d.reference_steps.length,2);
 resolved=await ctx.resolveWHOIndexReferences({code:'E11.3',lead_term:'Diabetes',who_validation:{valid:true}},{},async()=>d);assert.equal(resolved.status,'unverified');assert.equal(resolved.reference_steps.length,2);assert.equal(resolved.index_path,undefined,'never fabricate a combined printed diabetes path');
 const refs=await ctx.retrievePDFContext(db,'Fraktur shaft femur sinistra');assert.equal(refs[0].code,'S72.3');assert.equal(refs[0].review_status,'extracted_requires_review');assert.ok(queries.some(q=>q.params.includes('%shaft%')));
 vm.runInContext(fs.readFileSync(path.join(root,'functions/api/icd10-reference.js'),'utf8').replace(/^import [^;]+;\n/gm,'').replace(/export /g,''),ctx);
 r=await ctx.onRequestGet({request:new Request('https://test/api/icd10-reference?code=BAD'),env:{ICD10_WHO_DB:db}});assert.equal(r.status,400);
 r=await ctx.onRequestGet({request:new Request('https://test/api/icd10-reference?code=S72.3'),env:{}});assert.equal(r.status,503);
 r=await ctx.onRequestGet({request:new Request('https://test/api/icd10-reference?code=S72.3'),env:{ICD10_WHO_DB:db}});d=await r.json();assert.equal(d.certified,false);assert.equal(d.index_candidates.length,1);assert.equal(d.tabular_candidates[0].pdf_page,824);
 console.log('PASS: local PDF candidates, no network dependency, provenance, bad-context exclusion, shared DM steps without invented path, pre-model retrieval, malformed/missing bindings and no false verification');
})().catch(e=>{console.error(e);process.exitCode=1});
