export async function onRequestPost(context) {
  const corsHeaders = {
    "Access-Control-Allow-Origin": "*",
    "Access-Control-Allow-Headers": "Content-Type",
    "Access-Control-Allow-Methods": "POST, OPTIONS",
    "Content-Type": "application/json"
  };

  try {
    const body = await context.request.json();
    const apiKey = context.env.GROQ_API_KEY;

    if (!apiKey) {
      return new Response(
        JSON.stringify({ error: "GROQ_API_KEY tidak ditemukan di environment variables" }),
        { status: 500, headers: corsHeaders }
      );
    }

    let data, response;
    for (let attempt = 1; attempt <= 3; attempt++) {
      response = await fetch(
        "https://api.groq.com/openai/v1/chat/completions",
        {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
            "Authorization": `Bearer ${apiKey}`
          },
          body: JSON.stringify({
            model: "llama-3.3-70b-versatile",
            temperature: 0.1,
            max_tokens: 4096,
            messages: [
              {
                role: "user",
                content: body.prompt
              }
            ]
          })
        }
      );

      data = await response.json();

      // Retry on 429
      if (response.status === 429) {
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
        JSON.stringify({ error: `Groq: ${data.error.code} - ${data.error.message}` }),
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
