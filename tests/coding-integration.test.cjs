const fs = require('node:fs');
const vm = require('node:vm');
const assert = require('node:assert/strict');
const path = require('node:path');
const root = path.resolve(__dirname, '..');
const read = (repo, local) => fs.readFileSync(fs.existsSync(path.join(root, repo)) ? path.join(root, repo) : path.join(root, local), 'utf8');
let modelResult;
const calls=[];
const ctx=vm.createContext({Response, Request, URL, AbortSignal, console, setTimeout, fetch:async(url)=>{
 calls.push(String(url));
 if(String(url).includes('groq.com')) return Response.json({choices:[{message:{content:JSON.stringify(modelResult)}}]});
 return Response.json({valid:true,entity:{title:'Official title'}});
}});
require('./load-coding.cjs')(ctx, root);
const db=(rows)=>({prepare:()=>({bind:()=>({all:async()=>({results:rows})})})});
async function run(result,env={}) {
 modelResult=result;
 const response=await ctx.onRequestPost({request:new Request('https://example.test/api/claude',{method:'POST',body:JSON.stringify({clinicalText:'Pasien dirawat dengan dokumentasi diagnosis dan tindakan.'})}),env:{GROQ_API_KEY:'test',...env}});
 assert.equal(response.status,200);
 return JSON.parse((await response.json()).text);
}
(async()=>{
 let out=await run({diagnoses:[{code:'A15.0',lead_term_path:''}],procedures:[]});
 assert.ok(out.validation_layers); assert.equal(out.finalized,false); assert.equal(out.diagnoses[0].description,'Official title');
 const entries=[{code:'I49.00',title_extracted:'IM reference',review_status:'draft',pdf_page:2}];
 out=await run({diagnoses:[{code:'I49.00'}],procedures:[]},{ICD10_IM_DB:db(entries)});
 assert.equal(out.diagnoses[0].im_reference.coding_validity,'not_assessed'); assert.equal(out.diagnoses[0].who_validation.valid,false); assert.equal(out.finalized,false);
 calls.length=0;
 await run({diagnoses:[{code:'I49.00'}],procedures:[]});
 assert.ok(calls.some(x=>x.includes('/api/who-icd10')),'missing IM binding must not bypass WHO');
 const pentries=[{code:'91.040',pdf_page:40},{code:'91.040',pdf_page:61}];
 out=await run({diagnoses:[],procedures:[{code:'91.040'}]},{ICD9_IM_DB:db(pentries),ICD9_DB:db([])});
 assert.equal(out.procedures[0].im_reference.ambiguous,true);
 assert.ok(out.validations.some(x=>x.message.includes('deskripsi berbeda')));
 assert.ok(!out.validations.some(x=>x.message.includes('tidak ditemukan pada lookup')));
 out=await run({diagnoses:[],procedures:[{code:'99.17'}]});
 assert.ok(out.validations.some(x=>x.message.includes('dasar tidak tersedia')));

 for (const [code,input] of [['51.23','kolesistektomi laparoskopik'],['45.23','kolonoskopi'],['45.13','endoskopi usus halus'],['99.17','injeksi insulin'],['99.15','nutrisi parenteral'],['81.51','total hip replacement'],['81.54','total knee replacement']]) assert.equal(ctx.validateProcedures([{code}],input).length,0);
 assert.equal(ctx.validateProcedures([{code:'99.15'}],'injeksi insulin').length,1);
 const endpoint=vm.createContext({Response,URL});
 vm.runInContext(read('functions/api/icd9-im.js','functions_api_icd9-im.js').replace(/export /g,''),endpoint);
 assert.equal((await endpoint.onRequestGet({request:new Request('https://example.test/api/icd9-im?code=91.040'),env:{ICD9_IM_DB:db(pentries)}})).status,200);
 assert.equal((await endpoint.onRequestGet({request:new Request('https://example.test/api/icd9-im?code=BAD'),env:{ICD9_IM_DB:db([])}})).status,400);
 console.log('PASS: diagnosis-only persistence, IM draft handling, missing bindings, duplicate IM codes, mapping corrections, ICD9 endpoint');
})().catch(e=>{console.error(e);process.exitCode=1});

