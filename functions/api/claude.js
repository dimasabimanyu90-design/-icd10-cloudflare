export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  const MODELS = [
    "llama-3.3-70b-versatile",
    "meta-llama/llama-4-scout-17b-16e-instruct",
    "llama-3.1-8b-instant",
  ];

  // ── MULTI API KEY FALLBACK ──
  // Tambah GROQ_API_KEY_2, GROQ_API_KEY_3 di Cloudflare env vars
  // Kalau key 1 rate limit → otomatis coba key 2 → key 3 → balik ke key 1
  const API_KEYS = [
    context.env.GROQ_API_KEY,
    context.env.GROQ_API_KEY_2,
    context.env.GROQ_API_KEY_3,
  ].filter(Boolean); // hapus yang tidak diset

  if (API_KEYS.length === 0) {
    return new Response(
      JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan di environment variables" }),
      { status: 500, headers: corsHeaders }
    );
  }

  try {
    const body = await context.request.json();

    // Coba setiap kombinasi API key × model
    // Urutan: key1+model1 → key1+model2 → key2+model1 → key2+model2 → dst
    const attempts = [];
    for (const key of API_KEYS) {
      for (const model of MODELS) {
        attempts.push({ key, model });
      }
    }

    let lastError = null;

    for (const { key, model } of attempts) {
      let response, data;

      // 1 retry per kombinasi jika 429 sementara
      for (let attempt = 1; attempt <= 2; attempt++) {
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
              max_tokens: Math.min(8000, Math.max(4096, Math.ceil(body.prompt.length / 6))),
              messages: [{ role: "user", content: body.prompt }]
            })
          }
        );

        data = await response.json();

        if (response.status === 429) {
          if (attempt < 2) {
            // Tunggu sebentar lalu retry sekali
            const retryAfter = response.headers.get("retry-after");
            const delay = retryAfter ? parseInt(retryAfter) * 1000 : 5000;
            await new Promise(r => setTimeout(r, Math.min(delay, 10000)));
            continue;
          }
          // Masih 429 setelah retry → skip ke kombinasi berikutnya
          const keyIdx = API_KEYS.indexOf(key) + 1;
          lastError = `Rate limit — key ${keyIdx}, model ${model}`;
          break;
        }
        break; // sukses atau error non-429
      }

      if (response.status === 429) continue; // coba kombinasi berikutnya

      if (data.error) {
        lastError = `Groq (key${API_KEYS.indexOf(key)+1}/${model}): ${data.error.code} - ${data.error.message}`;
        // Kalau error bukan rate limit, langsung return error
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

      const keyIdx = API_KEYS.indexOf(key) + 1;
      const quota = {
        model: model,
        api_key_used: `key_${keyIdx}`,
        rpm_limit:          response.headers.get("x-ratelimit-limit-requests")     || null,
        rpm_remaining:      response.headers.get("x-ratelimit-remaining-requests") || null,
        rpm_reset:          response.headers.get("x-ratelimit-reset-requests")     || null,
        tpm_limit:          response.headers.get("x-ratelimit-limit-tokens")       || null,
        tpm_remaining:      response.headers.get("x-ratelimit-remaining-tokens")   || null,
        tpm_reset:          response.headers.get("x-ratelimit-reset-tokens")       || null,
        tokens_used:        data.usage ? data.usage.total_tokens                   : null,
        prompt_tokens:      data.usage ? data.usage.prompt_tokens                  : null,
        completion_tokens:  data.usage ? data.usage.completion_tokens              : null,
      };

      return new Response(
        JSON.stringify({ text, model_used: model, quota }),
        { status: 200, headers: corsHeaders }
      );
    }

    // Semua kombinasi key+model habis
    return new Response(
      JSON.stringify({
        error: `Semua API key & model sedang rate limit. Tunggu 1-2 menit. (${lastError})`
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
