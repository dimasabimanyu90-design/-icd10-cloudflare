import {json,sameOrigin,readJSON,hashToken} from '../lib/research.js';
export async function onRequest({request,env,data}) {
  const actor=data.researchActor;
  if (!actor) return json({error:'Forbidden'},403);
  if (!env.RESEARCH_DB) return json({error:'Database penelitian belum tersedia.'},503);
  const db=env.RESEARCH_DB;
  const url=new URL(request.url);
  const kind=url.searchParams.get('kind') || 'surveys';
  const table=kind==='surveys'?'research_responses':kind==='cases'?'research_cases':null;
  if (!table) return json({error:'Jenis data tidak valid.'},400);
  try {
    if (request.method==='GET') {
      const after=url.searchParams.get('after') || '';
      if (after.length>40) return json({error:'Cursor tidak valid.'},400);
      const boundary=url.searchParams.get('through');
      if (boundary!==null && !/^\d{1,15}$/.test(boundary)) return json({error:'Batas ekspor tidak valid.'},400);
      const through=boundary===null?(await db.prepare(`SELECT COALESCE(MAX(rowid),0) AS boundary FROM ${table}`).first()).boundary:Number(boundary);
      const result=await db.prepare(`SELECT * FROM ${table} WHERE deleted_at IS NULL AND id>? AND rowid<=? ORDER BY id LIMIT 101`).bind(after,through).all();
      const rows=(result.results || []).slice(0,100);
      return json({rows:rows.map(row=>({id:row.id,participant:row.participant,caseId:row.case_id,version:row.version,timestamp:row.created_at,...JSON.parse(row.payload)})),next:(result.results || []).length>100?rows.at(-1).id:null,through});
    }
    if (!['POST','DELETE'].includes(request.method)) return json({error:'Method not allowed'},405);
    if (!sameOrigin(request)) return json({error:'Origin tidak valid.'},403);
    let body; try {body=await readJSON(request);} catch {return json({error:'JSON tidak valid atau terlalu besar.'},400);}
    const now=new Date().toISOString();
    if (request.method==='DELETE') {
      if (!/^[a-f0-9-]{36}$/.test(body.id || '')) return json({error:'ID tidak valid.'},400);
      await db.batch([
        db.prepare(`UPDATE ${table} SET deleted_at=? WHERE id=? AND deleted_at IS NULL`).bind(now,body.id),
        db.prepare('INSERT INTO research_audit VALUES (?,?,?,?,?)').bind(crypto.randomUUID(),actor,'soft_delete',kind+':'+body.id,now)
      ]);
      return json({ok:true});
    }
    if (body.action==='invite') {
      if (!/^[A-Za-z0-9_-]{1,40}$/.test(body.participant || '')) return json({error:'Kode peserta 1–40 huruf, angka, garis bawah atau tanda hubung.'},400);
      const token=[...crypto.getRandomValues(new Uint8Array(32))].map(b=>b.toString(16).padStart(2,'0')).join('');
      const expires=new Date(Date.now()+30*86400000).toISOString();
      const inserted=await db.prepare('INSERT OR IGNORE INTO research_invites VALUES (?,?,?,?)').bind(await hashToken(token),body.participant.toUpperCase(),now,expires).run();
      if (!inserted.meta?.changes) return json({error:'Kode peserta sudah mempunyai undangan. Gunakan kode lain; simpan tautan undangan setelah dibuat.'},409);
      return json({link:url.origin+'/penelitian.html#invite='+token,expires},201);
    }
    if (body.action==='case') {
      if (!/^[A-Za-z0-9_-]{1,40}$/.test(body.caseId || '') || typeof body.version!=='string' || !body.version.trim() || body.version.length>120 || !/^[A-Z]\d{2}(?:\.\d{1,2})?$/.test(body.reference || '') || !/^(?:[A-Z]\d{2}(?:\.\d{1,2})?)?$/.test(body.prediction || '') || body.expertConfirmed!==true) return json({error:'Lengkapi kasus, versi, kode dan konfirmasi ahli.'},400);
      const payload={reference:body.reference,prediction:body.prediction,match:body.reference===body.prediction,expertConfirmed:true};
      const inserted=await db.prepare('INSERT OR IGNORE INTO research_cases (id,case_id,version,payload,created_at) VALUES (?,?,?,?,?)').bind(crypto.randomUUID(),body.caseId.toUpperCase(),body.version.trim(),JSON.stringify(payload),now).run();
      return inserted.meta?.changes?json({ok:true},201):json({error:'Kasus dan versi sudah dicatat.'},409);
    }
    return json({error:'Aksi tidak valid.'},400);
  } catch {return json({error:'Operasi database gagal. Data tidak ditampilkan.'},503);}
}
