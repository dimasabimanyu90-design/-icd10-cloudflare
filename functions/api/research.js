import {json, sameOrigin, readJSON, hashToken, validateSurvey} from '../lib/research.js';
export async function onRequest({request,env}) {
  if (request.method!=='POST') return json({error:'Method not allowed'},405);
  if (!sameOrigin(request)) return json({error:'Permintaan harus dari form website ini.'},403);
  if (!env.RESEARCH_DB) return json({error:'Pengumpulan data belum tersedia.'},503);
  let body, record;
  try {body=await readJSON(request); record=validateSurvey(body); if (!/^[a-f0-9]{64}$/.test(body.invite || '')) throw new Error('Buka tautan undangan dari peneliti.');}
  catch(error) {return json({error:error instanceof SyntaxError ? 'JSON tidak valid.' : error.message},400);}
  try {
    const tokenHash=await hashToken(body.invite); const id=crypto.randomUUID(); const now=new Date().toISOString();
    // A single conditional statement plus UNIQUE(invite_hash) prevents replay races.
    const result=await env.RESEARCH_DB.prepare('INSERT OR IGNORE INTO research_responses (id,invite_hash,participant,payload,created_at) SELECT ?,token_hash,participant,?,? FROM research_invites WHERE token_hash=? AND expires_at>?').bind(id,JSON.stringify(record),now,tokenHash,now).run();
    if (!result.meta?.changes) return json({error:'Undangan tidak valid, kedaluwarsa, atau sudah digunakan. Jika sebelumnya sudah mengirim, jangan isi ulang; hubungi peneliti.'},409);
    return json({ok:true,receipt:id},201);
  } catch {return json({error:'Jawaban belum dapat disimpan. Coba lagi; jawaban pada form tetap tersedia.'},503);}
}
