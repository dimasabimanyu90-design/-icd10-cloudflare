// Search a draft reference; this endpoint does not approve diagnosis coding.
export async function onRequestGet({ request, env }) {
  const respond = (body, status = 200) => Response.json(body, { status });
  if (!env.ICD9_IM_DB) return respond({ error: 'Database binding ICD9_IM_DB unavailable' }, 503);
  const url = new URL(request.url);
  const code = (url.searchParams.get('code') || '').trim().toUpperCase();
  const q = (url.searchParams.get('q') || '').trim();
  if (!code && q.length < 2) return respond({ error: 'Provide code or q (at least 2 characters)' }, 400);
  if (code && !/^\d{2}(?:\.\d{1,3})?$/.test(code)) {
    return respond({ error: 'Invalid code format' }, 400);
  }
  if (q.length > 150) return respond({ error: 'Search term too long' }, 400);
  const requestedLimit = Number(url.searchParams.get('limit') || 20);
  const limit = Number.isFinite(requestedLimit) ? Math.max(1, Math.min(100, Math.trunc(requestedLimit))) : 20;
  const like = '%' + q.replace(/[\\%_]/g, '\\$&') + '%';
  const where = code ? 'code = ?' : "(code LIKE ? ESCAPE '\\' OR title_extracted LIKE ? ESCAPE '\\')";
  const args = code ? [code, limit] : [like, like, limit];
  try {
    const result = await env.ICD9_IM_DB.prepare(
      `SELECT * FROM icd9_im_entries WHERE ${where} ORDER BY code, pdf_page LIMIT ?`
    ).bind(...args).all();
    return respond({ source: 'Uploaded ICD-9-CM IM PDF, Version_01 2025',
      purpose: 'reference_search', coding_validity: 'not_assessed',
      limit, results: result.results || [] });
  } catch {
    return respond({ error: 'ICD-9-CM IM reference unavailable; check database import' }, 503);
  }
}

