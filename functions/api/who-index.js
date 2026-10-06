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

// WHO IndexTerm dapat mengembalikan struktur Volume 3 dalam satu string,
// misalnya "Arthritis, arthritic - rheumatoid" atau
// "type 2 diabetes mellitus -- ophthalmic complications".
function parseIndexHierarchy(term, code = "") {
  let text = stripHtml(term);
  if (!text) return [];

  // WHO dapat mengirim dash sebagai ASCII maupun Unicode dash.
  // Samakan semuanya agar separator "- / -- / ---" bisa diproses konsisten.
  text = text.replace(/[‐‑‒–—−]/g, "-");

  const normalizedCode = String(code || "").trim().toUpperCase();
  if (normalizedCode) {
    text = text.replace(new RegExp("^" + normalizedCode + "\s*[-:]?\s*", "i"), "").trim();
  }

  // Contoh:
  // "Diabetes mellitus - type 2 -- with ophthalmic complication"
  // menjadi level 0, level 1, level 2.
  const chain = text.split(/\s+(-{1,3})\s+/).map(x => x.trim()).filter(Boolean);
  if (chain.length > 1) {
    const result = [{ level: 0, text: chain[0] }];
    for (let i = 1; i < chain.length; i += 2) {
      const separator = chain[i];
      const value = chain[i + 1];
      if (value) result.push({ level: String(separator).length, text: value });
    }
    return result;
  }

  return text ? [{ level: 0, text }] : [];
}

function chooseIndexHierarchy(indexTerms, code = "") {
  const candidates = (Array.isArray(indexTerms) ? indexTerms : [])
    .map(term => ({
      term: String(term || "").trim(),
      hierarchy: parseIndexHierarchy(term, code)
    }))
    .filter(item => item.term && item.hierarchy.length);

  if (!candidates.length) return [];

  candidates.sort((a, b) => {
    const maxA = Math.max(...a.hierarchy.map(x => x.level));
    const maxB = Math.max(...b.hierarchy.map(x => x.level));
    return (maxB - maxA) || (b.hierarchy.length - a.hierarchy.length);
  });

  return candidates[0].hierarchy;
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

// The public WHO ICD-10 browser exposes its index matches separately from titles.
// Accept only detailed terms carrying an explicit destination code, not title hits.
function extractBrowserIndexResults(html) {
  const results = [];
  for (const chunk of String(html).split(/(?=<div[^>]*class="oneentity\b)/)) {
    const id = chunk.match(/data-stemid="(http:\/\/id\.who\.int\/icd\/release\/10\/2010\/([^"/]+))"/);
    if (!id) continue;
    const code = id[2];
    const terms = [...chunk.matchAll(/<li\s+class="pv elink"[^>]*>([\s\S]*?)<\/li>/g)]
      .map(m => stripHtml(m[1]).replace(/&amp;/g, '&').replace(/&#39;/g, "'"))
      .filter(text => text.toUpperCase().endsWith(' ' + code.toUpperCase()))
      .map(text => text.slice(0, -(code.length + 1)).trim().split('|')
        .map((part, i) => (i ? '-'.repeat(Math.min(i, 3)) + ' ' : '') + part.trim()).join(' '));
    if (!terms.length) continue;
    const title = chunk.match(/<span class="titlelabel[^">]*">([\s\S]*?)<\/span>/);
    results.push({id: id[1], code, title: stripHtml(title?.[1] || ''), index_terms: terms,
      index_source: 'WHO_ICD10_BROWSER', source_url: 'https://icd.who.int/browse10/2010/en'});
  }
  return results;
}

async function searchBrowserIndex(term) {
  const response = await fetch('https://icd.who.int/browse10/2010/en/ACSearch', {
    method: 'POST', signal: AbortSignal.timeout(12000), headers: {'Content-Type': 'application/x-www-form-urlencoded'},
    body: new URLSearchParams({q: term}).toString()
  });
  return {ok: response.ok, status: response.status,
    results: response.ok ? extractBrowserIndexResults(await response.text()) : []};
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

    let matches = extractSearchResults(data);
    let browserStatus = null;
    if (!response.ok || !matches.some(item => item.index_terms.length &&
        (!requestedCode || String(item.code).toUpperCase() === requestedCode))) {
      const browser = await searchBrowserIndex(term).catch(() => ({status: 0, results: []}));
      browserStatus = browser.status;
      matches = [...browser.results, ...matches];
    }
    matches.sort((a, b) => Number(String(b.code).toUpperCase() === requestedCode) - Number(String(a.code).toUpperCase() === requestedCode));
    matches = matches.slice(0, limit);

    // Search WHO bisa gagal sementara/berubah perilakunya. Kalau kode target
    // tersedia, jangan langsung menganggap Index tidak terverifikasi.
    // Endpoint entity ICD-10 tetap dapat dipakai untuk mengambil indexTerm.
    if (!response.ok && !matches.length) {
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
          indexTerms = [...indexTerms, ...rawTerms.map(labelOf).filter(Boolean)];
        }
      }

      const tabularPath = await buildParentChain(match.code, token);

      const uniqueIndexTerms = [...new Set(indexTerms)];
      const indexHierarchy = chooseIndexHierarchy(uniqueIndexTerms, match.code);

      results.push({
        ...match,
        index_terms: uniqueIndexTerms,
        index_hierarchy: indexHierarchy,
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
      search_http_status: response.status,
      browser_http_status: browserStatus,
      note: "index_terms dan index_hierarchy berasal dari istilah indeks API atau browser ICD-10 resmi WHO; path_display tetap merupakan hierarki Volume 1 Tabular.",
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

