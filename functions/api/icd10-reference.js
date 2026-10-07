import { lookupPDFReference } from '../lib/who2010-pdf.js';
export async function onRequestGet(context) {
  const url=new URL(context.request.url),code=String(url.searchParams.get('code')||'').trim().toUpperCase(),term=String(url.searchParams.get('term')||'').trim();
  if ((code && !/^[A-Z]\d{2}(?:\.\d{1,2})?$/.test(code)) || term.length>200 || (!code && term.length<2)) return Response.json({error:'Supply a valid code or a term of 2–200 characters.'},{status:400});
  try {
    const data=await lookupPDFReference(context.env.ICD10_WHO_DB,code,term);
    return data ? Response.json(data,{headers:{'Cache-Control':'no-store'}}) : Response.json({error:'PDF reference database unavailable.'},{status:503});
  } catch {return Response.json({error:'PDF reference lookup failed.'},{status:503});}
}
