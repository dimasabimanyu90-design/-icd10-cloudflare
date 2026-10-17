import {json} from '../lib/research.js';
export async function onRequest({request,env,data}) {
  if (!data.researchActor) return json({error:'Forbidden'},403);
  if (request.method!=='GET') return json({error:'Method not allowed'},405);
  if (!env.RESEARCH_DB) return json({error:'Database penelitian belum tersedia.'},503);
  try {
    // Batch returns one consistent database snapshot, including every active row.
    const results=await env.RESEARCH_DB.batch([
      env.RESEARCH_DB.prepare(`SELECT COUNT(*) AS n, AVG(json_extract(payload,'$.score')) AS mean, SUM(json_extract(payload,'$.score')*json_extract(payload,'$.score')) AS squares, MIN(json_extract(payload,'$.score')) AS min, MAX(json_extract(payload,'$.score')) AS max FROM research_responses WHERE deleted_at IS NULL`),
      env.RESEARCH_DB.prepare(`SELECT 'SUS' AS instrument, CAST(j.key AS TEXT) AS item, CAST(j.value AS TEXT) AS answer, COUNT(*) AS n FROM research_responses r, json_each(r.payload,'$.answers') j WHERE r.deleted_at IS NULL GROUP BY j.key,j.value UNION ALL SELECT 'assessment',j.key,CAST(j.value AS TEXT),COUNT(*) FROM research_responses r,json_each(r.payload,'$.assessment') j WHERE r.deleted_at IS NULL GROUP BY j.key,j.value`),
      env.RESEARCH_DB.prepare(`SELECT 'role' AS field,json_extract(payload,'$.role') AS value,COUNT(*) AS n FROM research_responses WHERE deleted_at IS NULL GROUP BY value UNION ALL SELECT 'experience',json_extract(payload,'$.experience'),COUNT(*) FROM research_responses WHERE deleted_at IS NULL GROUP BY json_extract(payload,'$.experience')`),
      env.RESEARCH_DB.prepare(`SELECT version,COUNT(*) AS n,SUM(CASE WHEN json_extract(payload,'$.match')=1 THEN 1 ELSE 0 END) AS matched FROM research_cases WHERE deleted_at IS NULL GROUP BY version ORDER BY version`)
    ]);
    const sus=results[0].results[0];
    sus.sd=sus.n>1?Math.sqrt(Math.max(0,(sus.squares-sus.n*sus.mean*sus.mean)/(sus.n-1))):null;
    delete sus.squares;
    const cases=results[3].results.map(row=>({...row,accuracy:100*row.matched/row.n}));
    return json({generatedAt:new Date().toISOString(),scope:'active_records_only',sus,items:results[1].results,demographics:results[2].results,cases});
  } catch {return json({error:'Statistik belum dapat dimuat.'},503);}
}
