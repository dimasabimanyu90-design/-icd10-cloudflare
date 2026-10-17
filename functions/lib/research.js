export const ASSESSMENT_IDS = ['documentation_fit','code_specificity','reasoning_clarity','reference_traceability','warning_clarity','review_support'];
export function json(body, status = 200) {
  return Response.json(body, {status, headers:{'Cache-Control':'no-store','X-Content-Type-Options':'nosniff'}});
}
export function sameOrigin(request) {
  return request.headers.get('Origin') === new URL(request.url).origin;
}
export async function readJSON(request) {
  if (!request.headers.get('Content-Type')?.toLowerCase().startsWith('application/json')) throw new Error('Gunakan JSON.');
  const reader = request.body?.getReader(); if (!reader) throw new Error('Body kosong.');
  const chunks = []; let size = 0;
  try {
    while (true) {const {done,value} = await reader.read(); if (done) break; size += value.byteLength; if (size > 12000) {await reader.cancel(); throw new Error('Data terlalu besar.');} chunks.push(value);}
  } finally {reader.releaseLock();}
  const bytes = new Uint8Array(size); let offset = 0; for (const c of chunks) {bytes.set(c,offset); offset += c.length;}
  return JSON.parse(new TextDecoder().decode(bytes));
}
export async function hashToken(token) {
  return [...new Uint8Array(await crypto.subtle.digest('SHA-256',new TextEncoder().encode(token)))].map(b=>b.toString(16).padStart(2,'0')).join('');
}
export function validateSurvey(body) {
  if (!body || body.consent !== true || !Array.isArray(body.answers) || body.answers.length !== 10 || body.answers.some(v=>!Number.isInteger(v)||v<1||v>5)) throw new Error('Persetujuan dan 10 jawaban SUS wajib lengkap.');
  if (!['Petugas koder','Petugas rekam medis','Koder dan rekam medis'].includes(body.role) || !['Kurang dari 1 tahun','1–5 tahun','Lebih dari 5 tahun'].includes(body.experience)) throw new Error('Peran atau pengalaman tidak valid.');
  if (!body.assessment || ASSESSMENT_IDS.some(id=>!['1','2','3','4','5','NA'].includes(body.assessment[id]))) throw new Error('Asesmen belum lengkap.');
  if (typeof body.feedback !== 'string' || body.feedback.length>1500) throw new Error('Saran maksimal 1500 karakter.');
  const score = body.answers.reduce((s,v,i)=>s+(i%2?5-v:v-1),0)*2.5;
  return {role:body.role,experience:body.experience,answers:body.answers,score,assessment:Object.fromEntries(ASSESSMENT_IDS.map(id=>[id,body.assessment[id]])),feedback:body.feedback,consent:true,instrument:'SUS-ID-terjemahan-kerja-v1',assessmentInstrument:'asesmen-persepsi-koder-v1'};
}
function decode(part) {
  if (!/^[A-Za-z0-9_-]+$/.test(part)) throw new Error('Invalid token');
  return Uint8Array.from(atob(part.replace(/-/g,'+').replace(/_/g,'/').padEnd(Math.ceil(part.length/4)*4,'=')),c=>c.charCodeAt(0));
}
// Verify the cryptographic Access assertion even on alternate deployment hosts.
// Identity headers alone are not accepted. Configuration failure denies access.
export async function adminIdentity(request, env, fetchKeys = fetch) {
  const issuer = env.RESEARCH_ACCESS_ISSUER;
  if (!/^https:\/\/[a-z0-9-]+\.cloudflareaccess\.com$/.test(issuer || '') || !env.RESEARCH_ACCESS_AUD || !env.RESEARCH_ADMIN_EMAIL) return null;
  const token = request.headers.get('Cf-Access-Jwt-Assertion');
  if (!token || token.length>16000) return null;
  try {
    const parts = token.split('.'); if (parts.length!==3) return null;
    const header = JSON.parse(new TextDecoder().decode(decode(parts[0])));
    const payload = JSON.parse(new TextDecoder().decode(decode(parts[1])));
    const now = Date.now()/1000;
    if (header.alg !== 'RS256' || typeof header.kid !== 'string' || payload.iss !== issuer || payload.type !== 'app' || !Array.isArray(payload.aud) || !payload.aud.includes(env.RESEARCH_ACCESS_AUD) || !Number.isFinite(payload.exp) || payload.exp<=now || !Number.isFinite(payload.iat) || payload.iat>now+30 || (payload.nbf !== undefined && (!Number.isFinite(payload.nbf)||payload.nbf>now+30)) || typeof payload.email !== 'string' || payload.email.toLowerCase()!==env.RESEARCH_ADMIN_EMAIL.toLowerCase()) return null;
    const response = await fetchKeys(issuer+'/cdn-cgi/access/certs',{signal:AbortSignal.timeout(5000)});
    if (!response.ok) return null;
    const {keys} = await response.json();
    const jwk = keys?.find(k=>k.kid===header.kid && k.kty==='RSA' && (!k.alg||k.alg==='RS256') && (!k.use||k.use==='sig'));
    if (!jwk) return null;
    const key = await crypto.subtle.importKey('jwk',jwk,{name:'RSASSA-PKCS1-v1_5',hash:'SHA-256'},false,['verify']);
    const valid = await crypto.subtle.verify('RSASSA-PKCS1-v1_5',key,decode(parts[2]),new TextEncoder().encode(parts[0]+'.'+parts[1]));
    return valid ? payload.email.toLowerCase() : null;
  } catch {return null;}
}
