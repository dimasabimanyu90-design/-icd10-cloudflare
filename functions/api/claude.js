export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  const MODELS = [
    "llama-3.3-70b-versatile",                    // Terbaik untuk ICD-10, 70B
    "meta-llama/llama-4-scout-17b-16e-instruct",  // Fallback: Llama 4 Scout, cepat & limit longgar
    "llama-3.1-8b-instant",                       // Fallback terakhir
  ];

  try {
    const body = await context.request.json();
    const apiKey = context.env.GROQ_API_KEY;

    if (!apiKey) {
      return new Response(
        JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan di environment variables" }),
        { status: 500, headers: corsHeaders }
      );
    }

    let lastError = null;

    for (const model of MODELS) {
      let data, response;

      for (let attempt = 1; attempt <= 2; attempt++) {
        response = await fetch(
          "https://api.groq.com/openai/v1/chat/completions",
          {
            method: "POST",
            headers: {
              "Content-Type": "application/json",
              "Authorization": `Bearer ${apiKey}`
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
            const retryAfter = response.headers.get("retry-after");
            const delay = retryAfter ? parseInt(retryAfter) * 1000 : 8000;
            await new Promise(r => setTimeout(r, Math.min(delay, 15000)));
            continue;
          }
          lastError = `Rate limit pada model ${model}`;
          break;
        }
        break;
      }

      if (response.status === 429) continue;

      if (data.error) {
        return new Response(
          JSON.stringify({ error: `Groq (${model}): ${data.error.code} - ${data.error.message}` }),
          { status: 500, headers: corsHeaders }
        );
      }

      if (!data.choices || data.choices.length === 0) {
        return new Response(
          JSON.stringify({ error: "Tidak ada respons dari Groq. Coba lagi." }),
          { status: 500, headers: corsHeaders }
        );
      }

      let text = data.choices[0].message.content || "";
      text = text.replace(/```json\s*/gi, "").replace(/```\s*/g, "").trim();

      // Baca quota info dari response headers Groq
      const quota = {
        model: model,
        rpm_limit:       response.headers.get("x-ratelimit-limit-requests")       || null,
        rpm_remaining:   response.headers.get("x-ratelimit-remaining-requests")    || null,
        rpm_reset:       response.headers.get("x-ratelimit-reset-requests")        || null,
        tpm_limit:       response.headers.get("x-ratelimit-limit-tokens")          || null,
        tpm_remaining:   response.headers.get("x-ratelimit-remaining-tokens")      || null,
        tpm_reset:       response.headers.get("x-ratelimit-reset-tokens")          || null,
        tokens_used:     data.usage ? data.usage.total_tokens                      : null,
        prompt_tokens:   data.usage ? data.usage.prompt_tokens                     : null,
        completion_tokens: data.usage ? data.usage.completion_tokens               : null,
      };

      return new Response(
        JSON.stringify({ text, model_used: model, quota }),
        { status: 200, headers: corsHeaders }
      );
    }

    return new Response(
      JSON.stringify({ error: "Semua model Groq sedang rate limit. Tunggu 1-2 menit lalu coba lagi." }),
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
