import { buildPrompt, extractLeadTerm, normalizeIndexLabel, parseIndexReference, formatIndexTrace, indexTermMatches, buildWHOIndexPath, resolveWHOIndexReferences, referenceWarnings, validateCodingStructure, ICS_REFERENCE_PROFILE, auditICSContext } from "../../coding-rules.js";

// HTTP/model and database adapters. Coding policy is in coding-rules.js.
function extractWHOOfficialTitle(entity) {
  if (!entity) return null;

  const value = entity.title || entity.prefLabel || entity.label || null;

  function extract(value) {
    if (!value) return null;
    if (typeof value === 'string') return value.trim() || null;
    if (Array.isArray(value)) {
      for (const item of value) {
        const found = extract(item);
        if (found) return found;
      }
      return null;
    }
    if (typeof value === 'object') {
      return (
        extract(value['@value']) ||
        extract(value.value) ||
        extract(value.label) ||
        extract(value.term) ||
        null
      );
    }
    return null;
  }

  return extract(value);
}

function extractWHOText(value) {
  if (!value) return [];
  if (typeof value === 'string') return value.trim() ? [value.trim()] : [];
  if (Array.isArray(value)) return value.flatMap(extractWHOText);
  if (typeof value === 'object') {
    return extractWHOText(value['@value'] ?? value.value ?? value.label ?? value.term ?? value.title ?? null);
  }
  return [];
}

function extractWHOCrossReferences(value) {
  if (!Array.isArray(value)) return [];
  return value.map(item => {
    if (typeof item === 'string') return { term: item.trim() };
    if (!item || typeof item !== 'object') return null;
    return {
      term: extractWHOText(item.label ?? item.term ?? item.title ?? item)[0] || null,
      foundationReference: item.foundationReference || null,
      linearizationReference: item.linearizationReference || null
    };
  }).filter(item => item && item.term);
}

function buildWHOGuidance(entity) {
  if (!entity) return null;
  const inclusion = extractWHOText(entity.inclusion);
  const exclusion = extractWHOCrossReferences(entity.exclusion);
  const note = extractWHOText(entity.note);
  const codingHint = extractWHOText(entity.codingHint);

  if (!inclusion.length && !exclusion.length && !note.length && !codingHint.length) return null;

  return { inclusion, exclusion, note, codingHint };
}

async function validateDiagnosesWithWHOIndex(diagnoses, request) {
  const validations = [];
  let unverified = 0;
  const cache = new Map();
  async function lookup(term, code) {
    const key = term.toLowerCase() + ':' + code;
    if (!cache.has(key)) cache.set(key, (async () => {
      const url = new URL('/api/who-index', request.url);
      url.searchParams.set('term', term); url.searchParams.set('code', code); url.searchParams.set('limit', '12');
      const response = await fetch(url.toString(), { headers: { Accept: 'application/json' }, signal: AbortSignal.timeout(20000) });
      return response.ok ? response.json() : null;
    })());
    return cache.get(key);
  }
  for (const diagnosis of (Array.isArray(diagnoses) ? diagnoses : [])) {
    let result;
    if (diagnosis.im_reference?.local_extension) {
      result = { code: diagnosis.code, status: 'unverified', source: 'LOCAL_IM', cross_reference_status: 'unverified', reason: 'Referensi IM draft belum menyediakan jalur rujukan indeks terverifikasi.' };
    } else {
      try { result = await resolveWHOIndexReferences(diagnosis, request, lookup); }
      catch { result = { code: diagnosis.code, status: 'unverified', source: 'WHO_INDEX', cross_reference_status: 'unverified', reason: 'Penelusuran rujukan tidak tersedia atau timeout.' }; }
    }
    if (result.status !== 'verified') unverified++;
    validations.push(result); diagnosis.who_index = result;
    diagnosis.index_cross_reference = { status: result.cross_reference_status, trace: result.cross_reference_trace || [], coverage: result.cross_reference_coverage || 'unverified' };
  }
  return { validations, checked: validations.length, unverified };
}

async function validateDiagnosesWithWHO(diagnoses, request) {
  if (!Array.isArray(diagnoses) || diagnoses.length === 0) {
    return { diagnoses: diagnoses || [], validations: [], allValid: true, checked: 0, unverified: 0 };
  }

  const results = [];
  let hasInvalid = false;
  let unverified = 0;

  for (const diagnosis of diagnoses) {
    const code = String(diagnosis?.code || '').trim().toUpperCase();
    if (!code) continue;

    if (diagnosis.im_reference?.local_extension) {
      const result = {
        code,
        status: 'unverified',
        valid: false,
        source: 'LOCAL_IM',
        version: 'ICD-10 Indonesian Modification',
        reason: 'Kode ditemukan di referensi IM draft; kesesuaian klinis dan aturan coding perlu ditinjau.'
      };
      unverified++;
      results.push(result);
      diagnosis.who_validation = result;
      continue;
    }

    try {
      const whoUrl = new URL('/api/who-icd10', request.url);
      const response = await fetch(whoUrl.toString(), {
        method: 'POST',
        headers: { 'Content-Type': 'application/json' },
        body: JSON.stringify({ code })
      });
      const data = await response.json().catch(() => ({}));

      if (response.ok && data.valid === true) {
        const whoTitle = extractWHOOfficialTitle(data.entity);
        const result = {
          code,
          status: 'valid',
          valid: true,
          source: 'WHO',
          version: 'ICD-10 2010',
          title: whoTitle,
          parent: data.entity?.parent || null,
          who_guidance: buildWHOGuidance(data.entity)
        };

        // WHO menjadi sumber utama untuk nama resmi kode.
        // AI tetap boleh memberi description_id/penjelasan Indonesia,
        // tetapi description tidak boleh mengarang judul ICD-10.
        if (whoTitle) {
          diagnosis.description = whoTitle;
          diagnosis.who_official_title = whoTitle;
        }

        if (result.who_guidance) {
          diagnosis.who_guidance = result.who_guidance;
        }

        results.push(result);
        diagnosis.who_validation = result;
      } else if (response.status === 404 || data.http_status === 404) {
        hasInvalid = true;
        const result = {
          code,
          status: 'invalid',
          valid: false,
          source: 'WHO',
          version: 'ICD-10 2010',
          reason: data.reason || 'Kode tidak ditemukan di WHO ICD-10 2010.'
        };
        results.push(result);
        diagnosis.who_validation = result;
      } else {
        unverified++;
        const result = {
          code,
          status: 'unverified',
          valid: null,
          source: 'WHO',
          version: 'ICD-10 2010',
          reason: data.error || data.detail || data.reason || `WHO HTTP ${response.status}`
        };
        results.push(result);
        diagnosis.who_validation = result;
      }
    } catch (error) {
      unverified++;
      const result = {
        code,
        status: 'unverified',
        valid: null,
        source: 'WHO',
        version: 'ICD-10 2010',
        reason: error instanceof Error ? error.message : String(error)
      };
      results.push(result);
      diagnosis.who_validation = result;
    }
  }

  return {
    diagnoses,
    validations: results,
    allValid: !hasInvalid,
    unverified,
    checked: results.length
  };
}

// ── D1 LOOKUP ──
async function enrichWithD1(items, db) {
  if (!items || items.length === 0) return items;
  if (!db) return items.map(i => ({ ...i, _d1_unavailable: true }));
  try {
    const codes = items.map(i => i.code).filter(Boolean);
    if (codes.length === 0) return items;
    const placeholders = codes.map(() => '?').join(',');
    const result = await db.prepare(
      `SELECT code, path, vol1 FROM icd9_paths WHERE code IN (${placeholders})`
    ).bind(...codes).all();
    const map = {};
    if (result.results) {
      for (const row of result.results) {
        map[row.code] = { path: row.path, vol1: row.vol1 ? JSON.parse(row.vol1) : [] };
      }
    }
    return items.map(item => {
      const entry = map[item.code];
      if (entry) {
        return { ...item, lead_term_path: entry.path || item.lead_term_path,
          volume1_notes: (entry.vol1 && entry.vol1.length > 0) ? entry.vol1 : [] };
      }
      // Kode gak ketemu di D1 (3.646 kode resmi ICD-9-CM) → kemungkinan besar
      // halusinasi AI (kode ngarang/typo), bukan cuma "belum ke-enrich".
      return { ...item, volume1_notes: [], _d1_not_found: true };
    });
  } catch(e) {
    console.error('D1 lookup error:', e.message);
    return items.map(i => ({ ...i, volume1_notes: [], _d1_unavailable: true }));
  }
}

// Exact-code reference lookup. Draft PDF extraction is not clinical validation.
async function attachIMReferences(items, db, table, system) {
  const list = Array.isArray(items) ? items : [];
  if (!list.length) return { items: list, status: 'not_applicable', matched: 0 };
  if (!db) return { items: list, status: 'unavailable', matched: 0 };
  try {
    const codes = [...new Set(list.map(x => String(x.code || '').trim().toUpperCase()).filter(Boolean))];
    const rows = [];
    for (let offset = 0; offset < codes.length; offset += 50) {
      const batch = codes.slice(offset, offset + 50);
      const result = await db.prepare(`SELECT code,kind,title_extracted,source_file,pdf_page,review_status,entry_id FROM ${table} WHERE code IN (${batch.map(() => '?').join(',')}) ORDER BY code,pdf_page,entry_id`).bind(...batch).all();
      rows.push(...(result.results || []));
    }
    let matched = 0;
    const enriched = list.map(item => {
      const code = String(item.code || '').trim().toUpperCase();
      const matches = rows.filter(row => row.code === code);
      if (!matches.length) return { ...item, code };
      matched++;
      return { ...item, code, im_reference: {
        system, status: 'reference_found', coding_validity: 'not_assessed',
        local_extension: system === 'ICD9' ? /^\d{2}\.\d{3}$/.test(code) : /^[A-Z]\d{2}\.\d{2,3}$/.test(code),
        ambiguous: matches.length > 1, entries: matches
      } };
    });
    return { items: enriched, status: 'available', matched };
  } catch {
    return { items: list, status: 'unavailable', matched: 0 };
  }
}

export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  const MODELS = ["openai/gpt-oss-120b"];
  const API_KEYS = [
    context.env.GROQ_API_KEY,
    context.env.GROQ_API_KEY_2,
    context.env.GROQ_API_KEY_3,
  ].filter(Boolean);

  if (API_KEYS.length === 0) {
    return new Response(JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan" }), { status: 500, headers: corsHeaders });
  }

  try {
    const body = await context.request.json();
    const clinicalText    = body.clinicalText || '';
    const langInstruction = body.langInstruction || '';

    const MIN_LEN = 10;
    const MAX_LEN = 5000; // ~1200-1500 token, cukup buat resume medis panjang
    if (typeof clinicalText !== 'string' || clinicalText.trim().length < MIN_LEN) {
      return new Response(JSON.stringify({ error: `Teks klinis terlalu pendek (min ${MIN_LEN} karakter).` }), { status: 400, headers: corsHeaders });
    }
    if (clinicalText.length > MAX_LEN) {
      return new Response(JSON.stringify({ error: `Teks klinis terlalu panjang (maks ${MAX_LEN} karakter, kamu kirim ${clinicalText.length}). Ringkas dulu resume medisnya.` }), { status: 400, headers: corsHeaders });
    }

    const fullPrompt = buildPrompt(clinicalText, langInstruction);

    const model = MODELS[0];
    let lastError = null;

    for (let keyIdx = 0; keyIdx < API_KEYS.length; keyIdx++) {
      const key = API_KEYS[keyIdx];
      const response = await fetch("https://api.groq.com/openai/v1/chat/completions", {
        method: "POST",
        headers: { "Content-Type": "application/json", "Authorization": `Bearer ${key}` },
        body: JSON.stringify({
          model, temperature: 0.1, max_tokens: 8000,
          reasoning_effort: "medium",
          messages: [{ role: "user", content: fullPrompt }]
        })
      });

      const data = await response.json();

      if (response.status === 429) {
        const retryAfter = response.headers.get("x-ratelimit-reset-requests") || response.headers.get("retry-after");
        let waitMs = 8000;
        if (retryAfter) {
          if (retryAfter.endsWith('ms'))     waitMs = parseInt(retryAfter);
          else if (retryAfter.endsWith('s')) waitMs = parseFloat(retryAfter) * 1000;
          else                               waitMs = parseFloat(retryAfter) * 1000;
          waitMs = Math.min(waitMs, 15000);
        }
        lastError = `Rate limit — key ${keyIdx+1}, tunggu ${Math.round(waitMs/1000)}s`;
        if (keyIdx < API_KEYS.length - 1) await new Promise(r => setTimeout(r, waitMs));
        continue;
      }

      if (data.error) {
        lastError = `Groq (key${keyIdx+1}/${model}): ${data.error.code} - ${data.error.message}`;
        if (response.status !== 429 && response.status !== 503) {
          return new Response(JSON.stringify({ error: lastError }), { status: 500, headers: corsHeaders });
        }
        continue;
      }

      if (!data.choices || data.choices.length === 0) {
        return new Response(JSON.stringify({ error: "Tidak ada respons dari Groq. Coba lagi." }), { status: 500, headers: corsHeaders });
      }

      const text = (data.choices[0].message.content || "")
        .replace(/```json\s*/gi, "").replace(/```\s*/g, "").trim();

      const quota = {
        model, api_key_used: `key_${keyIdx+1}`,
        rpm_limit:         response.headers.get("x-ratelimit-limit-requests")     || null,
        rpm_remaining:     response.headers.get("x-ratelimit-remaining-requests") || null,
        rpm_reset:         response.headers.get("x-ratelimit-reset-requests")     || null,
        tpm_limit:         response.headers.get("x-ratelimit-limit-tokens")       || null,
        tpm_remaining:     response.headers.get("x-ratelimit-remaining-tokens")   || null,
        tpm_reset:         response.headers.get("x-ratelimit-reset-tokens")       || null,
        tokens_used:       data.usage ? data.usage.total_tokens       : null,
        prompt_tokens:     data.usage ? data.usage.prompt_tokens      : null,
        completion_tokens: data.usage ? data.usage.completion_tokens  : null,
      };

      let enrichedText = text;
      try {
        const parsed = JSON.parse(text);
        const diagnosisIM = await attachIMReferences(parsed.diagnoses, context.env.ICD10_IM_DB, 'icd10_im_entries', 'ICD10');
        parsed.diagnoses = diagnosisIM.items;
        for (const diagnosis of parsed.diagnoses) {
          const condition = String(diagnosis.condition_term || '').trim();
          if (!condition || !clinicalText.toLowerCase().includes(condition.toLowerCase())) diagnosis.condition_term = null;
        }
        const procedureIM = await attachIMReferences(parsed.procedures, context.env.ICD9_IM_DB, 'icd9_im_entries', 'ICD9');
        parsed.procedures = procedureIM.items;

        // Layer 1A: WHO ICD-10 2010 code/title validation.
        const whoResult = await validateDiagnosesWithWHO(
          Array.isArray(parsed.diagnoses) ? parsed.diagnoses : [],
          context.request
        );

        // Layer 1B: WHO Volume 3 Index lookup + code match.
        const whoIndexResult = await validateDiagnosesWithWHOIndex(
          Array.isArray(parsed.diagnoses) ? parsed.diagnoses : [],
          context.request
        );

        if (!Array.isArray(parsed.validations)) parsed.validations = [];
        const icsAudit = auditICSContext(parsed, clinicalText);
        parsed.ics_policy = { ...icsAudit, warnings: undefined };
        parsed.validations.push({ type: 'INFO', message: 'Referensi aturan: ICS DRAFT V1 Juli2025 dan pedoman iDRG April2025; perlu tinjauan koder.' }, ...icsAudit.warnings);
        parsed.validations.push(...referenceWarnings(diagnosisIM, 'ICD-10 IM'), ...referenceWarnings(procedureIM, 'ICD-9-CM IM'), ...validateCodingStructure(parsed));

        for (const result of whoResult.validations) {
          if (result.status === 'valid') {
            parsed.validations.push({
              type: result.source === 'LOCAL_IM' ? 'IM_VALID' : 'WHO_VALID',
              message: result.source === 'LOCAL_IM'
                ? `ICD-10 IM <strong>${result.code}</strong> dilewati dari validasi WHO karena merupakan kode Indonesian Modification.`
                : `ICD-10 <strong>${result.code}</strong> terdaftar di WHO ICD-10 2010: ${result.title || '-'}.` +
                  (result.who_guidance?.codingHint?.length ? ` WHO Coding Hint tersedia (${result.who_guidance.codingHint.length}).` : '') +
                  (result.who_guidance?.exclusion?.length ? ` WHO Exclusion tersedia (${result.who_guidance.exclusion.length}).` : '')
            });
          } else if (result.status === 'invalid') {
            parsed.validations.push({
              type: 'WHO_INVALID',
              message: `ICD-10 <strong>${result.code}</strong> tidak ditemukan di WHO ICD-10 2010. ${result.reason || 'Verifikasi manual diperlukan.'}`
            });
          } else {
            parsed.validations.push({
              type: 'WHO_UNVERIFIED',
              message: `ICD-10 <strong>${result.code}</strong> belum dapat diverifikasi ke WHO. ${result.reason || 'Verifikasi manual diperlukan.'}`
            });
          }
        }

        for (const result of whoIndexResult.validations) {
          if (result.status === 'verified') {
            parsed.validations.push({
              type: 'WHO_INDEX_VALID',
              message: `WHO Vol. 3 Index cocok untuk <strong>${result.code}</strong> melalui lead term "${result.lead_term || '-'}". Rujukan: ${result.cross_reference_status === 'resolved' ? 'tujuan yang tersedia telah ditelusuri' : 'tidak tampak pada istilah sumber yang dikembalikan'}.${formatIndexTrace(result)}`
            });
          } else {
            parsed.validations.push({
              type: 'WHO_INDEX_UNVERIFIED',
              message: `WHO Vol. 3 Index untuk <strong>${result.code}</strong> belum terverifikasi. ${result.reason || 'Verifikasi manual diperlukan.'}${formatIndexTrace(result)}`
            });
          }
        }

        parsed.validation_layers = {
          index_cross_references: { status: whoIndexResult.unverified ? 'unverified' : whoIndexResult.checked ? 'source_checked' : 'not_applicable', checked: whoIndexResult.checked, unverified: whoIndexResult.unverified, coverage: 'returned_source_terms_only' },
          icd10_im: { status: diagnosisIM.status, matched: diagnosisIM.matched, coding_validity: 'not_assessed' },
          icd9_im: { status: procedureIM.status, matched: procedureIM.matched, coding_validity: 'not_assessed' },
          who_icd10_2010: {
            status: whoResult.allValid ? 'passed' : 'review_required',
            checked: whoResult.checked
          },
          who_vol3_index: {
            status: whoIndexResult.unverified === 0 ? 'passed' : 'unverified',
            checked: whoIndexResult.checked,
            unverified: whoIndexResult.unverified,
                      },
          idrg: {
            status: 'reference_rules_with_documentation_checks',
            reference_profile: ICS_REFERENCE_PROFILE.id,
            documentation_status: icsAudit.status,
            note: 'Pemeriksaan struktur dan kecocokan kutipan berjalan di server; ketepatan MB/DU klinis tetap perlu tinjau manual.'
          }
        };

        // WHO adalah Layer 1. Unverified bukan berarti invalid, tetapi juga
        // belum boleh dianggap final. iDRG masih berupa prompt rules, jadi
        // finalisasi penuh belum diklaim di sini.
        parsed.reference_checks_passed = whoResult.allValid && whoResult.unverified === 0 && whoIndexResult.unverified === 0;
        parsed.finalized = false; // Clinical MB/iDRG sequencing still requires review.
        parsed.validation_layers.who_icd10_2010.unverified = whoResult.unverified;
        if (whoResult.unverified > 0) {
          parsed.validation_layers.who_icd10_2010.status = 'unverified';
        }

        if (parsed.procedures && parsed.procedures.length > 0) {
          for (const item of parsed.procedures) item.index_cross_reference = { status: 'unverified', trace: [], reason: 'Lookup ICD-9 dan referensi IM belum menyediakan rujukan indeks terverifikasi.' };
          parsed.validation_layers.icd9_index_cross_references = { status: 'unverified', checked: parsed.procedures.length };
          parsed.validations.push({ type: 'WARNING', message: 'Jalur see/see also/see condition untuk prosedur ICD-9 belum terverifikasi; periksa indeks dan tabular secara manual.' });
          const db = context.env.ICD9_DB || null;
          parsed.procedures = await enrichWithD1(parsed.procedures, db);

          // Kode yang gak ketemu di D1 (3.646 kode resmi ICD-9-CM) = kemungkinan
          // besar halusinasi/typo AI. Surface sebagai validation warning biar
          // kelihatan di UI, lalu bersihin flag internal sebelum dikirim.
          const notFoundWarnings = parsed.procedures
            .filter(p => p._d1_not_found && !p.im_reference)
            .map(p => ({
              type: 'WARNING',
              message: `Kode prosedur <strong>${p.code}</strong> (${p.description || '-'}) tidak ditemukan pada lookup ICD-9-CM yang tersedia. Kelengkapan dataset belum tervalidasi — verifikasi manual.`
            }));
          if (notFoundWarnings.length > 0) {
            if (!Array.isArray(parsed.validations)) parsed.validations = [];
            parsed.validations.push(...notFoundWarnings);
          }
          if (parsed.procedures.some(p => p._d1_unavailable)) parsed.validations.push({ type: 'WARNING', message: 'Lookup ICD-9-CM dasar tidak tersedia; verifikasi manual.' });
          parsed.procedures = parsed.procedures.map(({ _d1_not_found, _d1_unavailable, ...rest }) => rest);

        }
        enrichedText = JSON.stringify(parsed);
      } catch(e) {
        enrichedText = JSON.stringify({ diagnoses: [], procedures: [], finalized: false, validations: [{ type: 'ERROR', message: 'Hasil tidak dapat diproses atau divalidasi; coba ulang dan verifikasi manual.' }] });
      }

      return new Response(JSON.stringify({ text: enrichedText, model_used: model, quota }), { status: 200, headers: corsHeaders });
    }

    return new Response(JSON.stringify({ error: `Semua API key sedang rate limit. Tunggu 1-2 menit. (${lastError})` }), { status: 429, headers: corsHeaders });

  } catch (err) {
    return new Response(JSON.stringify({ error: `Server error: ${err.message}` }), { status: 500, headers: corsHeaders });
  }
}

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: { "Access-Control-Allow-Origin": "*", "Access-Control-Allow-Headers": "Content-Type", "Access-Control-Allow-Methods": "POST, OPTIONS" }
  });
}




