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
  // WHO ICD-10 codes are normally one letter + two digits,
  // optionally followed by a decimal and 1-2 digits.
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
    throw new Error("WHO OAuth failed (" + response.status + "): " + detail.slice(0, 300));
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
  if (!data || typeof data !== "object") {
    return null;
  }

  const code = firstValue(data.code) ?? requestedCode;
  const title =
    firstValue(data.title) ??
    firstValue(data.prefLabel) ??
    firstValue(data.label) ??
    null;

  const parent = firstValue(data.parent) ?? null;
  const child = Array.isArray(data.child) ? data.child : [];

  // ICD-10 uses note/codingHint in the WHO content model.
  const note = data.note ?? null;
  const codingHint = data.codingHint ?? null;
  const inclusion = data.inclusion ?? null;
  const exclusion = data.exclusion ?? null;

  return {
    code,
    title,
    parent,
    child,
    note,
    codingHint,
    inclusion,
    exclusion
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

    const url = WHO_BASE_URL + "/" + encodeURIComponent(code);

    const response = await fetch(url, {
      method: "GET",
      headers: {
        "Authorization": "Bearer " + token,
        "API-Version": "v1",
        "Accept": "application/json",
        "Accept-Language": "en"
      }
    });

    if (response.status === 404) {
      return json({
        valid: false,
        code,
        version: "ICD-10 2010",
        source: "WHO",
        reason: "Code not found in WHO ICD-10 2010"
      });
    }

    if (!response.ok) {
      const detail = await response.text();

      return json({
        valid: false,
        code,
        version: "ICD-10 2010",
        source: "WHO",
        error: "WHO validation request failed",
        http_status: response.status,
        detail: detail.slice(0, 500)
      }, 502);
    }

    const data = await response.json();
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

  // Reuse the same validation implementation through a synthetic POST request.
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
