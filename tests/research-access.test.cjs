const {test}=require('node:test');
const assert=require('node:assert/strict');
const fs=require('node:fs'),path=require('node:path'),vm=require('node:vm');
const {webcrypto}=require('node:crypto');
const root=path.resolve(__dirname,'..');
function load(file,extras={}) {
 const c=vm.createContext({Request,Response,URL,TextEncoder,TextDecoder,Uint8Array,atob,AbortSignal,crypto:webcrypto,fetch:async()=>{throw Error('Unexpected network')},...extras});
 const source=fs.readFileSync(path.join(root,'functions/lib/research.js'),'utf8')+'\n'+(file?fs.readFileSync(path.join(root,file),'utf8').replace(/^import .*;$/gm,''):'');
 vm.runInContext(source.replace(/export /g,''),c);return c;
}
const body=()=>({invite:'a'.repeat(64),consent:true,answers:[5,1,5,1,5,1,5,1,5,1],role:'Petugas koder',experience:'1–5 tahun',assessment:Object.fromEntries(['documentation_fit','code_specificity','reasoning_clarity','reference_traceability','warning_clarity','review_support'].map(k=>[k,'NA'])),feedback:''});
test('server recomputes score, ignores forged identity and limits responses',()=>{
 const c=load();const input={...body(),score:0,participant:'forged',admin:true};const output=c.validateSurvey(input);assert.equal(output.score,100);assert.equal(output.participant,undefined);assert.equal(output.admin,undefined);assert.throws(()=>c.validateSurvey({...input,answers:[1]}));assert.throws(()=>c.validateSurvey({...input,consent:false}));assert.throws(()=>c.validateSurvey({...input,feedback:'x'.repeat(1501)}));
});
test('public endpoint is write-only, same-origin and replay-safe',async()=>{
 let count=0;let sql='';const db={prepare(s){sql=s;return{bind(){return{run:async()=>({meta:{changes:count++===0?1:0}})}}}}};const c=load('functions/api/research.js');const request=(method='POST',origin='https://example.com')=>new Request('https://example.com/api/research',{method,headers:{Origin:origin,'Content-Type':'application/json'},...(method==='POST'?{body:JSON.stringify(body())}:{})});
 assert.equal((await c.onRequest({request:request('GET'),env:{RESEARCH_DB:db}})).status,405);
 assert.equal((await c.onRequest({request:request('POST','https://evil.com'),env:{RESEARCH_DB:db}})).status,403);
 assert.equal((await c.onRequest({request:request(),env:{RESEARCH_DB:db}})).status,201);
 assert.equal((await c.onRequest({request:request(),env:{RESEARCH_DB:db}})).status,409);
 assert.match(sql,/INSERT OR IGNORE/);assert.match(sql,/expires_at>\?/);
});
test('admin API denies absent identity and cross-origin deletion before database access',async()=>{
 const c=load('functions/admin/api.js');
 const request=new Request('https://example.com/admin/api',{method:'DELETE',headers:{Origin:'https://evil.com'}});
 assert.equal((await c.onRequest({request,env:{},data:{}})).status,403);
 assert.equal((await c.onRequest({request,env:{RESEARCH_DB:{}},data:{researchActor:'admin@example.com'}})).status,403);
});
test('Access JWT verifies signature, email, audience, issuer and expiry; missing config denies',async()=>{
 const c=load(); const pair=await webcrypto.subtle.generateKey({name:'RSASSA-PKCS1-v1_5',modulusLength:2048,publicExponent:new Uint8Array([1,0,1]),hash:'SHA-256'},true,['sign','verify']);const jwk=await webcrypto.subtle.exportKey('jwk',pair.publicKey);jwk.kid='test';
 const env={RESEARCH_ACCESS_ISSUER:'https://test.cloudflareaccess.com',RESEARCH_ACCESS_AUD:'aud',RESEARCH_ADMIN_EMAIL:'admin@example.com'};
 const now=Math.floor(Date.now()/1000);const payload={iss:env.RESEARCH_ACCESS_ISSUER,aud:['aud'],type:'app',email:'admin@example.com',iat:now,exp:now+300};
 async function token(overrides={},alg='RS256') {const head=Buffer.from(JSON.stringify({alg,kid:'test'})).toString('base64url');const body=Buffer.from(JSON.stringify({...payload,...overrides})).toString('base64url');const sig=await webcrypto.subtle.sign('RSASSA-PKCS1-v1_5',pair.privateKey,new TextEncoder().encode(head+'.'+body));return head+'.'+body+'.'+Buffer.from(sig).toString('base64url');}
 const request=t=>new Request('https://example.com/admin/api',{headers:{'Cf-Access-Jwt-Assertion':t}});const keys=async()=>Response.json({keys:[jwk]});
 assert.equal(await c.adminIdentity(request(await token()),env,keys),'admin@example.com');
 for(const override of [{email:'other@example.com'},{aud:['wrong']},{iss:'https://evil.com'},{exp:now-1},{type:'org'},{iat:now+300},{nbf:now+300}])assert.equal(await c.adminIdentity(request(await token(override)),env,keys),null);
 const good=await token();assert.equal(await c.adminIdentity(request(good.slice(0,-8)+'AAAAAAAA'),env,keys),null);assert.equal(await c.adminIdentity(request(await token({},'none')),env,keys),null);assert.equal(await c.adminIdentity(request(good),{},keys),null);
});
test('public page exposes no dataset export or delete controls',()=>{const html=fs.readFileSync(path.join(root,'penelitian.html'),'utf8');assert.ok(!html.includes('id="clear"'));assert.ok(!html.includes('id="records"'));assert.ok(!html.includes('id="accuracy"'));assert.ok(!fs.readFileSync(path.join(root,'penelitian.js'),'utf8').includes('localStorage'));});
