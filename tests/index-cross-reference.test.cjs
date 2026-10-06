const fs=require('node:fs'),vm=require('node:vm'),path=require('node:path'),assert=require('node:assert/strict');
const root=path.resolve(__dirname,'..');
const src=fs.existsSync(path.join(root,'functions/api/claude.js'))?path.join(root,'functions/api/claude.js'):path.join(root,'claude.js');
const ctx=vm.createContext({Response,URL,AbortSignal,console});require('./load-coding.cjs')(ctx, root);
const diagnosis=(extra={})=>({code:'A00.0',lead_term:'Alpha',who_validation:{valid:true},...extra});
const source=(terms,code='A00.0')=>({valid:true,results:[{code,index_terms:terms,title:'Source title'}]});
const query=(mapping)=>async(term)=>mapping[term]||{valid:false};
const request={url:'https://example.test/api/claude'};
(async()=>{
 let result=await ctx.resolveWHOIndexReferences(diagnosis({lead_term_path:'Alpha\n- invented AI modifier'}),request,query({Alpha:source(['Alpha'])}));
 assert.equal(result.status,'verified');assert.equal(result.index_path.modifiers.length,0,'never borrow AI modifier hierarchy');
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Completely unrelated term'])}));assert.equal(result.status,'unverified');
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Alpha - see Beta']),Beta:source(['Beta'])}));assert.equal(result.cross_reference_status,'resolved');assert.equal(result.cross_reference_trace.length,2);
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Alpha - see also Beta']),Beta:source(['Beta'])}));assert.equal(result.cross_reference_status,'resolved');
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Alpha - see condition'])}));assert.equal(result.status,'unverified');
 result=await ctx.resolveWHOIndexReferences(diagnosis({condition_term:'Beta'}),request,query({Alpha:source(['Alpha - see condition']),Beta:source(['Beta'])}));assert.equal(result.cross_reference_status,'resolved');
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Alpha - see Beta']),Beta:source(['Beta - see Alpha'])}));assert.equal(result.status,'unverified');assert.match(result.reason,/siklus/);
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Alpha - see Beta']),Beta:source(['Beta'],'B00.0')}));assert.equal(result.status,'unverified');
 result=await ctx.resolveWHOIndexReferences(diagnosis({lead_term_path:'Alpha - see fabricated'}),request,query({Alpha:source(['Alpha'])}));assert.equal(result.status,'unverified');
 result=await ctx.resolveWHOIndexReferences(diagnosis({who_validation:{valid:false}}),request,query({Alpha:source(['Alpha'])}));assert.equal(result.status,'unverified');
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query({Alpha:source(['Alpha','Alpha - see Beta']),Beta:source(['Beta'])}));assert.equal(result.status,'unverified');
 const chain={Alpha:source(['Alpha - see Beta']),Beta:source(['Beta - see Gamma']),Gamma:source(['Gamma - see Delta']),Delta:source(['Delta - see Epsilon']),Epsilon:source(['Epsilon'])};
 result=await ctx.resolveWHOIndexReferences(diagnosis(),request,query(chain));assert.equal(result.status,'unverified');assert.match(result.reason,/Batas/);
 assert.equal(ctx.extractLeadTerm({lead_term_path:'Alpha\n- Beta'}),'Alpha');
 console.log('PASS: source-only hierarchy, term mismatch, see/see also/see condition, missing condition, loops, wrong target code, AI-only referral, tabular failure, ambiguity, bounded traversal, newline parsing');
})().catch(e=>{console.error(e);process.exitCode=1});

