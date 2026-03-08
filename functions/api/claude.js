export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  const MODELS = [
    "llama-3.3-70b-versatile",
  ];

  // ── MULTI API KEY FALLBACK ──
  // key1 → tunggu retry-after → key2 → tunggu retry-after → key3
  const API_KEYS = [
    context.env.GROQ_API_KEY,
    context.env.GROQ_API_KEY_2,
    context.env.GROQ_API_KEY_3,
  ].filter(Boolean);

  if (API_KEYS.length === 0) {
    return new Response(
      JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan di environment variables" }),
      { status: 500, headers: corsHeaders }
    );
  }

  try {
    const body = await context.request.json();

    const attempts = [];
    for (const key of API_KEYS) {
      for (const model of MODELS) {
        attempts.push({ key, model });
      }
    }

    let lastError = null;

    for (let i = 0; i < attempts.length; i++) {
      const { key, model } = attempts[i];
      const keyIdx = API_KEYS.indexOf(key) + 1;
      let response, data;

      response = await fetch(
        "https://api.groq.com/openai/v1/chat/completions",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${key}`
          },
          body: JSON.stringify({
            model: model,
            temperature: 0.1,
            max_tokens: Math.min(4000, Math.max(2000, Math.ceil(body.prompt.length / 8))),
            messages: [{ role: "user", content: body.prompt }]
          })
        }
      );

      data = await response.json();

      if (response.status === 429) {
        // Baca retry-after dari header Groq — dia kasih tahu berapa detik harus tunggu
        // Format bisa: "30s", "1500ms", atau angka detik biasa
        const retryAfter = response.headers.get("x-ratelimit-reset-requests")
          || response.headers.get("retry-after");

        let waitMs = 8000; // default 8 detik kalau header tidak ada
        if (retryAfter) {
          if (retryAfter.endsWith('ms')) {
            waitMs = parseInt(retryAfter);
          } else if (retryAfter.endsWith('s')) {
            waitMs = parseFloat(retryAfter) * 1000;
          } else {
            waitMs = parseFloat(retryAfter) * 1000;
          }
          waitMs = Math.min(waitMs, 15000); // max tunggu 15 detik per key
        }

        lastError = `Rate limit — key ${keyIdx}, model ${model}, tunggu ${Math.round(waitMs/1000)}s`;

        // KUNCI FIX: tunggu dulu sebelum coba key berikutnya
        // Tanpa ini key 2 dan 3 dipanggil serentak → semua kena limit bersamaan
        if (i < attempts.length - 1) {
          await new Promise(r => setTimeout(r, waitMs));
        }

        continue; // coba key berikutnya
      }

      if (data.error) {
        lastError = `Groq (key${keyIdx}/${model}): ${data.error.code} - ${data.error.message}`;
        if (response.status !== 429 && response.status !== 503) {
          return new Response(
            JSON.stringify({ error: lastError }),
            { status: 500, headers: corsHeaders }
          );
        }
        continue;
      }

      if (!data.choices || data.choices.length === 0) {
        return new Response(
          JSON.stringify({ error: "Tidak ada respons dari Groq. Coba lagi." }),
          { status: 500, headers: corsHeaders }
        );
      }

      const text = (data.choices[0].message.content || "")
        .replace(/```json\s*/gi, "").replace(/```\s*/g, "").trim();

      const quota = {
        model: model,
        api_key_used: `key_${keyIdx}`,
        rpm_limit:         response.headers.get("x-ratelimit-limit-requests")     || null,
        rpm_remaining:     response.headers.get("x-ratelimit-remaining-requests") || null,
        rpm_reset:         response.headers.get("x-ratelimit-reset-requests")     || null,
        tpm_limit:         response.headers.get("x-ratelimit-limit-tokens")       || null,
        tpm_remaining:     response.headers.get("x-ratelimit-remaining-tokens")   || null,
        tpm_reset:         response.headers.get("x-ratelimit-reset-tokens")       || null,
        tokens_used:       data.usage ? data.usage.total_tokens                   : null,
        prompt_tokens:     data.usage ? data.usage.prompt_tokens                  : null,
        completion_tokens: data.usage ? data.usage.completion_tokens              : null,
      };

      return new Response(
        JSON.stringify({ text, model_used: model, quota }),
        { status: 200, headers: corsHeaders }
      );
    }

    // Semua API key sudah dicoba dan habis
    return new Response(
      JSON.stringify({
        error: `Semua API key sedang rate limit. Tunggu 1-2 menit. (${lastError})`
      }),
      { status: 429, headers: corsHeaders }
    );

  } catch (err) {
    return new Response(
      JSON.stringify({ error: `Server error: ${err.message}` }),
      { status: 500, headers: corsHeaders }
    );
  }
}

export async function onRequestOptions() {
  return new Response(null, {
    status: 204,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Access-Control-Allow-Headers": "Content-Type",
      "Access-Control-Allow-Methods": "POST, OPTIONS"
    }
  });
}
