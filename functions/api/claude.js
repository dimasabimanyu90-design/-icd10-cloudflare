export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  try {
    const body = await context.request.json();
    const apiKey = context.env.GEMINI_API_KEY;

    if (!apiKey) {
      return new Response(
        JSON.stringify({ error: "GEMINI_API_KEY tidak ditemukan di environment variables" }),
        { status: 500, headers: corsHeaders }
      );
    }

    let data, response;
    for (let attempt = 1; attempt <= 3; attempt++) {
      response = await fetch(
        `https://generativelanguage.googleapis.com/v1beta/models/gemini-1.5-flash:generateContent?key=${apiKey}`,
        {
          method: "POST",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({
            contents: [{ parts: [{ text: body.prompt }] }],
            generationConfig: {
              temperature: 0.1,
              maxOutputTokens: 4096
            }
          })
        }
      );

      data = await response.json();

      // Retry on 429
      if (response.status === 429 || (data.error && data.error.code === 429)) {
        if (attempt < 3) {
          await new Promise(r => setTimeout(r, attempt * 3000));
          continue;
        } else {
          return new Response(
            JSON.stringify({ error: "Rate limit. Tunggu 1 menit lalu coba lagi." }),
            { status: 429, headers: corsHeaders }
          );
        }
      }
      break;
    }

    if (data.error) {
      return new Response(
        JSON.stringify({ error: `Gemini: ${data.error.code} - ${data.error.message}` }),
        { status: 500, headers: corsHeaders }
      );
    }

    if (!data.candidates || data.candidates.length === 0) {
      const reason = data.promptFeedback?.blockReason || JSON.stringify(data);
      return new Response(
        JSON.stringify({ error: `Tidak ada respons dari Gemini. Info: ${reason}` }),
        { status: 500, headers: corsHeaders }
      );
    }

    let text = data.candidates[0].content.parts[0].text || "";
    text = text.replace(/```json\s*/gi, "").replace(/```\s*/g, "").trim();

    return new Response(
      JSON.stringify({ text }),
      { status: 200, headers: corsHeaders }
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
