/**
 * WHO ICD-10 2010 Validator
 *
 * Server-side bridge:
 * Browser/app -> Cloudflare Pages Function -> WHO ICD API
 *
 * Required Pages secrets:
 *   WHO_CLIENT_ID
 *   WHO_CLIENT_SECRET
 *
 * This endpoint intentionally validates against the WHO ICD-10 2010 release.
 * It does not replace the existing AI/iDRG pipeline yet.
 */

const WHO_TOKEN_URL = "https://icdaccessmanagement.who.int/connect/token";
const WHO_BASE_URL = "https://id.who.int/icd/release/10/2010";

function json(data, status = 200) {
  return Response.json(data, {
    status,
    headers: {
      "Cache-Control": "no-store"
    }
  });
}

function normalizeCode(value) {
  return String(value ?? "")
    .trim()
    .toUpperCase()
    .replace(/^ICD[- ]?10[: ]*/i, "")
    .replace(/\s+/g, "");
}

function isReasonableICD10Code(code) {
  return /^[A-Z][0-9]{2}(?:\.[0-9A-Z]{1,2})?$/.test(code);
}

async function getWHOAccessToken(clientId, clientSecret) {
  const basic = btoa(clientId + ":" + clientSecret);

  const response = await fetch(WHO_TOKEN_URL, {
    method: "POST",
    headers: {
      "Authorization": "Basic " + basic,
      "Content-Type": "application/x-www-form-urlencoded"
    },
    body: "grant_type=client_credentials&scope=icdapi_access"
  });

  if (!response.ok) {
    const detail = await response.text();
    throw new Error(
      "WHO OAuth failed (" + response.status + "): " + detail.slice(0, 300)
    );
  }

  const data = await response.json();

  if (!data.access_token) {
    throw new Error("WHO OAuth response did not contain an access token");
  }

  return data.access_token;
}

function firstValue(value) {
  if (Array.isArray(value)) return value[0] ?? null;
  return value ?? null;
}

function compactEntity(data, requestedCode) {
  if (!data || typeof data !== "object") return null;

  const code = firstValue(data.code) ?? requestedCode;
  const title =
    firstValue(data.title) ??
    firstValue(data.prefLabel) ??
    firstValue(data.label) ??
    null;

  const parent = firstValue(data.parent) ?? null;
  const child = Array.isArray(data.child) ? data.child : [];

  return {
    code,
    title,
    parent,
    child,
    note: data.note ?? null,
    codingHint: data.codingHint ?? null,
    inclusion: data.inclusion ?? null,
    exclusion: data.exclusion ?? null
  };
}

async function validateAgainstWHO(code, token) {
  const url = WHO_BASE_URL + "/" + encodeURIComponent(code);

  const response = await fetch(url, {
    method: "GET",
    headers: {
      "Authorization": "Bearer " + token,
      // WHO ICD API v2 is the current supported API version.
      "API-Version": "v2",
      "Accept": "application/json, application/ld+json",
      "Accept-Language": "en"
    }
  });

  const detail = await response.text();

  return {
    response,
    detail,
    data: (() => {
      if (!detail) return null;
      try {
        return JSON.parse(detail);
      } catch {
        return null;
      }
    })()
  };
}

export async function onRequestPost(context) {
  try {
    const body = await context.request.json().catch(() => ({}));
    const code = normalizeCode(body.code);

    if (!code) {
      return json({
        valid: false,
        error: "ICD-10 code is required"
      }, 400);
    }

    if (!isReasonableICD10Code(code)) {
      return json({
        valid: false,
        code,
        version: "ICD-10 2010",
        source: "WHO",
        reason: "Invalid ICD-10 code format"
      });
    }

    const clientId = context.env?.WHO_CLIENT_ID;
    const clientSecret = context.env?.WHO_CLIENT_SECRET;

    if (!clientId || !clientSecret) {
      return json({
        valid: false,
        error: "WHO API credentials are not configured in Cloudflare Pages"
      }, 500);
    }

    const token = await getWHOAccessToken(clientId, clientSecret);
    const result = await validateAgainstWHO(code, token);

    if (result.response.status === 404) {
      return json({
        valid: false,
        code,
        version: "ICD-10 2010",
        source: "WHO",
        reason: "WHO returned 404 for this ICD-10 entity",
        http_status: 404,
        detail: result.detail.slice(0, 500)
      });
    }

    if (!result.response.ok) {
      return json({
        valid: false,
        code,
        version: "ICD-10 2010",
        source: "WHO",
        error: "WHO validation request failed",
        http_status: result.response.status,
        detail: result.detail.slice(0, 500)
      }, 502);
    }

    const data = result.data;

    if (!data) {
      return json({
        valid: false,
        code,
        version: "ICD-10 2010",
        source: "WHO",
        error: "WHO returned a successful response that was not valid JSON"
      }, 502);
    }

    const entity = compactEntity(data, code);

    return json({
      valid: true,
      code,
      version: "ICD-10 2010",
      source: "WHO",
      entity,
      raw: data
    });
  } catch (error) {
    return json({
      valid: false,
      source: "WHO",
      error: "WHO validator error",
      detail: error instanceof Error ? error.message : String(error)
    }, 500);
  }
}

export async function onRequestGet(context) {
  const url = new URL(context.request.url);
  const code = url.searchParams.get("code");

  if (!code) {
    return json({
      valid: false,
      error: "Use ?code=J18.9"
    }, 400);
  }

  const request = new Request(context.request.url, {
    method: "POST",
    headers: {
      "Content-Type": "application/json"
    },
    body: JSON.stringify({ code })
  });

  return onRequestPost({
    ...context,
    request
  });
}
