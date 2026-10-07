const assert=require('node:assert/strict'),fs=require('node:fs'),vm=require('node:vm'),path=require('node:path');
(async()=>{
 let calls=0;
 const ctx=vm.createContext({Request,Response,URL,URLSearchParams,AbortSignal,btoa,console,fetch:async()=>{calls++;return Response.json({code:'A00',title:'Cholera',parent:'http://id.who.int/icd/release/10/2010/A00'});}});
 const source=fs.readFileSync(path.join(__dirname,'../functions/api/who-index.js'),'utf8');
 vm.runInContext(source.replace(/export /g,''),ctx);
 const chain=await ctx.buildParentChain('A00','test');
 assert.equal(calls,1);assert.equal(chain.length,1,'self-parent loop must terminate before another lookup');
 const response=await ctx.onRequestGet({request:new Request('https://test/api/who-index?term=abc&code=bad'),env:{}});
 assert.equal(response.status,400);
 let entity={code:'J18.0',title:'Wrong code'};
 const tabular=vm.createContext({Request,Response,URL,AbortSignal,btoa,fetch:async url=>String(url).includes('connect/token') ? Response.json({access_token:'test'}) : Response.json(entity)});
 vm.runInContext(fs.readFileSync(path.join(__dirname,'../functions/api/who-icd10.js'),'utf8').replace(/export /g,''),tabular);
 const run=()=>tabular.onRequestPost({request:new Request('https://test/api/who-icd10',{method:'POST',body:JSON.stringify({code:'J18.9'})}),env:{WHO_CLIENT_ID:'test',WHO_CLIENT_SECRET:'test'}});
 let r=await run();assert.equal(r.status,502);assert.equal((await r.json()).valid,false);
 entity={code:'J18.9'};r=await run();assert.equal(r.status,502);
 entity={code:'J18.9',title:{'@value':'Pneumonia, unspecified'}};r=await run();assert.equal((await r.json()).valid,true);
 console.log('PASS: cyclic tabular parents, bounded traversal, malformed parameters, WHO entity identity and title validation');
})().catch(e=>{console.error(e);process.exitCode=1});
