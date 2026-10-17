import {adminIdentity,json} from '../lib/research.js';
export async function onRequest(context) {
  const actor=await adminIdentity(context.request,context.env);
  if (!actor) return json({error:'Login admin diperlukan.'},403);
  context.data.researchActor=actor;
  const response=await context.next();
  const headers=new Headers(response.headers); headers.set('Cache-Control','no-store'); headers.set('X-Frame-Options','DENY');
  return new Response(response.body,{status:response.status,headers});
}
