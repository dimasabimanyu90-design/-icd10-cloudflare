/**
 * WHO ICD-10 2010 Vol. 3 / Alphabetical Index search
 *
 * Searches WHO ICD-10 2010 for index terms and enriches matches with
 * their WHO tabular parent chain. The two structures are returned
 * separately because a tabular parent chain is not necessarily the
 * literal printed indentation of Volume 3.
 */

const WHO_TOKEN_URL = "https://icdaccessmanagement.who.int/connect/token";
const WHO_BASE_URL = "https://id.who.int/icd/release/10/2010";
const TOKEN_CACHE = new Map();

function json(data, status = 200) {
  return Response.json(data, {
    status,
    headers: { "Cache-Control": "no-store" }
  });
}

async function getWHOAccessToken(clientId, clientSecret) {
  const cached = TOKEN_CACHE.get(clientId);
  if (cached && cached.expiresAt > Date.now() + 60000) return cached.token;

  const basic = btoa(clientId + ":" + clientSecret);
  const response = await fetch(WHO_TOKEN_URL, {
    method: "POST",
    headers: {
      Authorization: "Basic " + basic,
      "Content-Type": "application/x-www-form-urlencoded"
    },
    body: "grant_type=client_credentials&scope=icdapi_access"
  });

  if (!response.ok) {
    const detail = await response.text();
    throw new Error("WHO OAuth failed (" + response.status + "): " + detail.slice(0, 300));
  }

  const data = await response.json();
  if (!data.access_token) throw new Error("WHO OAuth response did not contain an access token");

  const expiresIn = Number(data.expires_in || 3600);
  TOKEN_CACHE.set(clientId, {
    token: data.access_token,
    expiresAt: Date.now() + expiresIn * 1000
  });
  return data.access_token;
}

function first(value) {
  return Array.isArray(value) ? (value[0] ?? null) : (value ?? null);
}

function labelOf(value) {
  if (!value) return null;
  if (typeof value === "string") return value;
  if (Array.isArray(value)) return labelOf(value[0]);
  if (typeof value === "object") {
    if (value.label) return labelOf(value.label);
    if (value.value) return labelOf(value.value);
    if (value["@value"]) return value["@value"];
    if (value.term) return labelOf(value.term);
  }
  return null;
}

function stripHtml(value) {
  return String(value ?? "").replace(/<[^>]*>/g, "").replace(/&nbsp;/g, " ").trim();
}

function extractSearchResults(data) {
  const raw = data?.destinationEntities || data?.DestinationEntities || [];
  if (!Array.isArray(raw)) return [];

  return raw.map((item) => {
    const matching = item.matchingPVs || item.MatchingPVs || [];
    const indexMatches = Array.isArray(matching)
      ? matching
          .filter((m) => String(m.propertyId || m.PropertyId || "").toLowerCase() === "indexterm")
          .map((m) => stripHtml(m.label || m.Label || ""))
          .filter(Boolean)
      : [];

    return {
      id: item.id || item.Id || null,
      code: item.theCode || item.TheCode || item.code || item.Code || null,
      title: stripHtml(item.title || item.Title || ""),
      score: item.score ?? item.Score ?? null,
      index_terms: indexMatches,
      title_is_search_result: item.titleIsASearchResult ?? item.TitleIsSearchResult ?? false,
      important: item.important ?? item.Important ?? false
    };
  }).filter((item) => item.code || item.id);
}

async function getEntity(code, token) {
  const response = await fetch(WHO_BASE_URL + "/" + encodeURIComponent(code), {
    headers: {
      Authorization: "Bearer " + token,
      "API-Version": "v2",
      Accept: "application/json, application/ld+json",
      "Accept-Language": "en"
    }
  });

  const detail = await response.text();
  let data = null;
  try { data = detail ? JSON.parse(detail) : null; } catch {}

  return { ok: response.ok, status: response.status, data };
}

async function buildParentChain(code, token, maxDepth = 12) {
  const chain = [];
  let current = code;

  for (let i = 0; i < maxDepth && current; i++) {
    const result = await getEntity(current, token);
    if (!result.ok || !result.data) break;

    const data = result.data;
    const entityCode = first(data.code) || current;
    const title = labelOf(data.title) || labelOf(data.prefLabel) || labelOf(data.label);

    chain.unshift({
      level: chain.length,
      code: entityCode,
      title,
      class_kind: data.classKind || null
    });

    const parent = first(data.parent);
    const match = parent && String(parent).match(/\/2010\/([^/]+)$/);
    current = match ? match[1] : null;
  }

  return chain;
}

export async function onRequestGet(context) {
  try {
    const url = new URL(context.request.url);
    const term = String(url.searchParams.get("term") || "").trim();
    const requestedCode = String(url.searchParams.get("code") || "").trim().toUpperCase();
    const limit = Math.min(Math.max(Number(url.searchParams.get("limit") || 10), 1), 20);

    if (term.length < 2) {
      return json({ valid: false, error: "Parameter term minimal 2 karakter. Contoh: ?term=pneumonia" }, 400);
    }

    const clientId = context.env?.WHO_CLIENT_ID;
    const clientSecret = context.env?.WHO_CLIENT_SECRET;
    if (!clientId || !clientSecret) {
      return json({ valid: false, error: "WHO API credentials are not configured in Cloudflare Pages" }, 500);
    }

    const token = await getWHOAccessToken(clientId, clientSecret);
    const searchUrl = new URL(WHO_BASE_URL + "/search");
    searchUrl.searchParams.set("q", term);
    searchUrl.searchParams.set("useFlexisearch", "true");
    searchUrl.searchParams.set("flatResults", "true");

    const response = await fetch(searchUrl.toString(), {
      headers: {
        Authorization: "Bearer " + token,
        "API-Version": "v2",
        Accept: "application/json",
        "Accept-Language": "en"
      }
    });

    const detail = await response.text();
    let data = null;
    try { data = detail ? JSON.parse(detail) : null; } catch {}

    let matches = extractSearchResults(data).slice(0, limit);

    // Search WHO bisa gagal sementara/berubah perilakunya. Kalau kode target
    // tersedia, jangan langsung menganggap Index tidak terverifikasi.
    // Endpoint entity ICD-10 tetap dapat dipakai untuk mengambil indexTerm.
    if (!response.ok) {
      if (!requestedCode) {
        return json({
          valid: false,
          source: "WHO",
          version: "ICD-10 2010",
          status: "unverified",
          error: "WHO index search failed",
          http_status: response.status,
          detail: detail.slice(0, 500)
        }, 502);
      }

      const direct = await getEntity(requestedCode, token);
      if (!direct.ok || !direct.data) {
        return json({
          valid: false,
          source: "WHO",
          version: "ICD-10 2010",
          status: "unverified",
          error: "WHO index search and direct code lookup failed",
          search_http_status: response.status,
          direct_http_status: direct.status,
          detail: detail.slice(0, 300)
        }, 502);
      }

      const rawTerms = direct.data.indexTerm || direct.data.IndexTerm || [];
      const directTerms = Array.isArray(rawTerms) ? rawTerms.map(labelOf).filter(Boolean) : [];
      const normalize = value => String(value || "")
        .toLowerCase()
        .replace(/<[^>]*>/g, "")
        .replace(/[^a-z0-9]+/g, " ")
        .trim();
      const needle = normalize(term);
      const directMatch = directTerms.some(item => {
        const candidate = normalize(item);
        return candidate === needle || candidate.includes(needle) || needle.includes(candidate);
      });

      // Kode target adalah anchor utama. Jika entity WHO berhasil ditemukan,
      // gunakan indexTerm milik entity tersebut walaupun lead term AI tidak
      // identik dengan salah satu istilah WHO. Ini menghindari false-unverified
      // akibat perbedaan istilah/ranking search.
      matches = [{
        id: direct.data["@id"] || null,
        code: requestedCode,
        title: stripHtml(
          labelOf(direct.data.title) ||
          labelOf(direct.data.prefLabel) ||
          labelOf(direct.data.label) ||
          ""
        ),
        score: null,
        index_terms: directTerms,
        title_is_search_result: false,
        important: true,
        direct_lookup: true,
        search_term_match: directMatch
      }];
    }

    // Bila pencarian lead term tidak menempatkan kode target di hasil teratas,
    // ambil entity kode secara langsung. Ini tetap aman karena kita hanya
    // menerima fallback jika lead term benar-benar muncul sebagai WHO index term.
    if (requestedCode && !matches.some(item => String(item.code || '').toUpperCase() === requestedCode)) {
      const direct = await getEntity(requestedCode, token);
      if (direct.ok && direct.data) {
        const rawTerms = direct.data.indexTerm || direct.data.IndexTerm || [];
        const directTerms = Array.isArray(rawTerms) ? rawTerms.map(labelOf).filter(Boolean) : [];
        const normalize = value => String(value || '').toLowerCase().replace(/<[^>]*>/g, '').replace(/[^a-z0-9]+/g, ' ').trim();
        const needle = normalize(term);
        const directMatch = directTerms.some(item => {
          const candidate = normalize(item);
          return candidate === needle || candidate.includes(needle) || needle.includes(candidate);
        });

        matches.unshift({
          id: direct.data['@id'] || null,
          code: requestedCode,
          title: stripHtml(labelOf(direct.data.title) || labelOf(direct.data.prefLabel) || labelOf(direct.data.label) || ""),
          score: null,
          index_terms: directTerms,
          title_is_search_result: false,
          important: true,
          direct_lookup: true,
          search_term_match: directMatch
        });
      }
    }

    const results = [];

    for (const match of matches) {
      if (!match.code) {
        results.push({ ...match, tabular_path: [], path_display: [] });
        continue;
      }

      const entityResult = await getEntity(match.code, token);
      let indexTerms = match.index_terms;

      if (entityResult.ok && entityResult.data) {
        const rawTerms = entityResult.data.indexTerm || entityResult.data.IndexTerm || [];
        if (Array.isArray(rawTerms)) {
          indexTerms = rawTerms.map(labelOf).filter(Boolean);
        }
      }

      const tabularPath = await buildParentChain(match.code, token);

      results.push({
        ...match,
        index_terms: [...new Set(indexTerms)],
        tabular_path: tabularPath,
        path_display: tabularPath.map((item, i) => ({
          level: i + 1,
          prefix: "-".repeat(i + 1),
          code: item.code,
          title: item.title
        }))
      });
    }

    return json({
      valid: true,
      source: "WHO",
      version: "ICD-10 2010",
      term,
      count: results.length,
      note: "index_terms berasal dari WHO Volume 3 Index API. path_display adalah hierarki Volume 1 Tabular dari parent entity WHO. API WHO tidak menyediakan level indentasi cetak Volume 3, sehingga aplikasi tidak mengarang --/--- untuk Index.",
      results
    });
  } catch (error) {
    return json({
      valid: false,
      source: "WHO",
      version: "ICD-10 2010",
      status: "unverified",
      error: "WHO Vol. 3 index search error",
      detail: error instanceof Error ? error.message : String(error)
    }, 500);
  }
}
