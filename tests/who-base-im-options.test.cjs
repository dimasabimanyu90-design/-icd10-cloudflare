const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..');let model,whoStatus='valid';
const ctx=vm.createContext({Request,Response,URL,AbortSignal,console,setTimeout,fetch:async(url,opts={})=>{
 if(String(url).includes('groq.com'))return Response.json({choices:[{message:{content:JSON.stringify(model)}}]});
 if(String(url).includes('who-index'))return Response.json({valid:true,results:[]});
 if(whoStatus==='invalid')return Response.json({valid:false,http_status:404},{status:404});
 if(whoStatus==='offline')return Response.json({valid:false},{status:503});
 return Response.json({valid:true,entity:{title:'WHO closed shaft fracture'}});
}});require('./load-coding.cjs')(ctx,root);
const rows=[{code:'S72.30',title_extracted:'Simple fracture (IM)',source_file:'source.pdf',pdf_page:83},{code:'S72.31',title_extracted:'Butterfly fracture (IM)',source_file:'source.pdf',pdf_page:83}];
const db={prepare:()=>({bind:()=>({all:async()=>({results:rows})})})};
async function run(code='S72.30',scheme='WHO_ICD10_2010',binding=db){model={diagnoses:[{role:'DU',code,code_system:scheme,description:'AI invented title',documentation_quote:'Fraktur shaft femur tertutup'}],procedures:[]};const response=await ctx.onRequestPost({request:new Request('https://test/api/claude',{method:'POST',body:JSON.stringify({clinicalText:'Fraktur shaft femur tertutup.'})}),env:{GROQ_API_KEY:'test',ICD10_IM_DB:binding}});return JSON.parse((await response.json()).text);}
(async()=>{
 let r=await run();assert.equal(r.diagnoses[0].description,'WHO closed shaft fracture');assert.equal(r.diagnoses[0].code,'S72.3');assert.equal(r.diagnoses[0].im_reference,undefined);assert.equal(r.diagnoses[0].im_options.length,2);assert.equal(r.diagnoses[0].im_options[0].description,'Simple fracture (IM)');assert.equal(r.diagnoses[0].im_options[0].clinical_match,'requires_review');assert.equal(r.diagnoses[0].im_options[0].selected,false);assert.equal(r.diagnoses[0].im_options[0].who_anchor_code,'S72.3');
 r=await run('S72.30','ICD10_IM');assert.equal(r.diagnoses.length,0);assert.equal(r.blocked_diagnoses.length,1,'never reinterpret a declared IM code as WHO even when digits coincide');
 whoStatus='invalid';r=await run('E11.32');assert.equal(r.diagnoses.length,0);assert.equal(r.blocked_diagnoses[0].code,'E11.32');assert.equal(r.blocked_diagnoses[0].coding_status,'held');assert.equal(r.blocked_diagnoses[0].who_validation.status,'invalid');assert.equal(r.reference_checks_passed,false);
 whoStatus='offline';r=await run();assert.equal(r.diagnoses.length,0);assert.equal(r.blocked_diagnoses[0].who_validation.status,'unverified');
 whoStatus='valid';r=await run('S72.30','WHO_ICD10_2010',null);assert.equal(r.diagnoses[0].code,'S72.3');assert.equal(r.diagnoses[0].im_options_status,'unavailable');
 r=await run('S72.301');assert.equal(r.diagnoses.length,0,'no digit truncation or invented child approval');
 const category=ctx.selectWHOBaseDiagnoses([{code:'E11',who_validation:{source:'WHO',valid:true,title:'Category',has_subcategories:true}}]);assert.equal(category.accepted.length,0);assert.equal(category.blocked.length,1);
 const html=fs.readFileSync(path.join(root,'index.html'),'utf8');const ui=vm.createContext({currentLang:'id',escapeHTML:s=>String(s||'').replaceAll('<','&lt;').replaceAll('>','&gt;')});vm.runInContext(html.slice(html.indexOf('function renderDiagnosisIMOptions('),html.indexOf('function renderResultCard(')),ui);
 const output=ui.renderDiagnosisIMOptions({im_options:[{code:'S72.30',description:'<script>unsafe</script>',source_file:'source.pdf',pdf_page:83}]});assert.ok(!output.includes('<script>'));assert.match(output,/Kode DU\/DS WHO tetap digunakan/);assert.match(html,/Usulan ditahan — tidak masuk DU\/DS/);
 console.log('PASS: WHO-only DU/DS, invalid and offline quarantine, no truncation, IM collision isolation, independent titles, no automatic IM selection, binding failure and escaped UI');
})().catch(e=>{console.error(e);process.exitCode=1});
