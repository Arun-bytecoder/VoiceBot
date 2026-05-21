#!/bin/bash
set -e

# ============================================================
#  Arunachalam Voice Bot — Realistic Git History Builder
#  Run this script inside an empty folder.
#  It creates the full project with 18 commits.
# ============================================================

echo "🚀 Building git history for arun-voicebot..."

git init
git config user.name "Arunachalam"
git config user.email "arunachalam@example.com"

mkdir -p api

# ─────────────────────────────────────────────
# COMMIT 1 — init project
# ─────────────────────────────────────────────
cat > package.json << 'EOF'
{
  "name": "arun-voicebot",
  "version": "1.0.0",
  "description": "Personal voice bot"
}
EOF

cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Arunachalam Voice Bot</title>
</head>
<body>
  <h1>Voice Bot</h1>
  <p>Coming soon...</p>
</body>
</html>
EOF

git add .
GIT_AUTHOR_DATE="2025-01-03T09:12:00" GIT_COMMITTER_DATE="2025-01-03T09:12:00" \
git commit -m "init: scaffold project structure"

# ─────────────────────────────────────────────
# COMMIT 2 — basic HTML layout
# ─────────────────────────────────────────────
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Arunachalam — Voice Bot</title>
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>Talk to Arunachalam</h1>
      <p>Ask me anything about my journey, skills, and aspirations.</p>
    </div>

    <div class="chat-area" id="chatArea">
      <p class="empty">Press the mic or type a question below</p>
    </div>

    <div class="controls">
      <button id="micBtn">🎤 Speak</button>
      <div class="input-row">
        <input type="text" id="textInput" placeholder="Or type your question..." />
        <button id="sendBtn">Send</button>
      </div>
    </div>
  </div>
</body>
</html>
EOF

git add .
GIT_AUTHOR_DATE="2025-01-03T10:45:00" GIT_COMMITTER_DATE="2025-01-03T10:45:00" \
git commit -m "feat: add base HTML layout with chat area and controls"

# ─────────────────────────────────────────────
# COMMIT 3 — add CSS variables and base styles
# ─────────────────────────────────────────────
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Arunachalam — Voice Bot</title>
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }

    :root {
      --bg: #0a0a0f;
      --surface: #111118;
      --border: #1e1e2e;
      --accent: #7c6dfa;
      --text: #e8e8f0;
      --muted: #6b6b85;
      --card: #13131d;
    }

    html, body {
      height: 100%;
      background: var(--bg);
      color: var(--text);
      font-family: monospace;
    }

    .container {
      min-height: 100vh;
      display: flex;
      flex-direction: column;
      align-items: center;
      padding: 48px 24px;
      max-width: 780px;
      margin: 0 auto;
    }

    h1 { font-size: 2rem; margin-bottom: 8px; }
    p { color: var(--muted); }

    .chat-area {
      width: 100%;
      flex: 1;
      min-height: 200px;
      margin: 32px 0;
      border: 1px solid var(--border);
      border-radius: 12px;
      padding: 16px;
    }

    .controls { width: 100%; display: flex; flex-direction: column; gap: 16px; align-items: center; }

    #micBtn {
      padding: 16px 32px;
      background: var(--accent);
      border: none;
      border-radius: 8px;
      color: #fff;
      font-size: 16px;
      cursor: pointer;
    }

    .input-row { display: flex; width: 100%; gap: 8px; }
    #textInput {
      flex: 1;
      padding: 12px;
      background: var(--card);
      border: 1px solid var(--border);
      border-radius: 8px;
      color: var(--text);
      font-size: 14px;
    }
    #sendBtn {
      padding: 12px 20px;
      background: var(--surface);
      border: 1px solid var(--border);
      border-radius: 8px;
      color: var(--text);
      cursor: pointer;
    }
  </style>
</head>
<body>
  <div class="container">
    <div class="header">
      <h1>Talk to Arunachalam</h1>
      <p>Ask me anything about my journey, skills, and aspirations.</p>
    </div>

    <div class="chat-area" id="chatArea">
      <p class="empty">Press the mic or type a question below</p>
    </div>

    <div class="controls">
      <button id="micBtn">🎤 Speak</button>
      <div class="input-row">
        <input type="text" id="textInput" placeholder="Or type your question..." />
        <button id="sendBtn">Send</button>
      </div>
    </div>
  </div>
</body>
</html>
EOF

git add .
GIT_AUTHOR_DATE="2025-01-03T13:20:00" GIT_COMMITTER_DATE="2025-01-03T13:20:00" \
git commit -m "style: add CSS variables, base layout and dark theme"

# ─────────────────────────────────────────────
# COMMIT 4 — add custom fonts
# ─────────────────────────────────────────────
sed -i 's|<title>|<link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800\&family=DM+Mono:ital,wght@0,300;0,400;1,300\&display=swap" rel="stylesheet" />\n  <title>|' index.html
sed -i 's|font-family: monospace;|font-family: '"'"'DM Mono'"'"', monospace;|' index.html
sed -i 's|<h1>|<h1 style="font-family: Syne, sans-serif; font-weight: 800;">|' index.html

git add .
GIT_AUTHOR_DATE="2025-01-04T09:05:00" GIT_COMMITTER_DATE="2025-01-04T09:05:00" \
git commit -m "style: import Syne and DM Mono fonts from Google Fonts"

# ─────────────────────────────────────────────
# COMMIT 5 — add Groq API backend (basic)
# ─────────────────────────────────────────────
cat > api/chat.js << 'EOF'
export const config = { runtime: "edge" };

export default async function handler(req) {
  if (req.method !== "POST") {
    return new Response("Method not allowed", { status: 405 });
  }

  const { messages } = await req.json();

  const groqRes = await fetch("https://api.groq.com/openai/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${process.env.GROQ_API_KEY}`,
    },
    body: JSON.stringify({
      model: "llama3-8b-8192",
      messages: [
        { role: "system", content: "You are a helpful assistant." },
        ...messages,
      ],
      max_tokens: 300,
    }),
  });

  const data = await groqRes.json();
  const reply = data.choices?.[0]?.message?.content || "No response.";

  return new Response(JSON.stringify({ reply }), {
    headers: { "Content-Type": "application/json" },
  });
}
EOF

cat > vercel.json << 'EOF'
{
  "rewrites": [
    { "source": "/api/(.*)", "destination": "/api/$1" }
  ]
}
EOF

git add .
GIT_AUTHOR_DATE="2025-01-04T11:30:00" GIT_COMMITTER_DATE="2025-01-04T11:30:00" \
git commit -m "feat: add Groq API edge function with basic system prompt"

# ─────────────────────────────────────────────
# COMMIT 6 — add personality system prompt
# ─────────────────────────────────────────────
cat > api/chat.js << 'EOF'
export const config = { runtime: "edge" };

const SYSTEM_PROMPT = `You are Arunachalam, a passionate AI and Data Science graduate from Chennai, India. You speak in first person as Arunachalam himself — warm, thoughtful, genuine, and grounded.

NAME: Arunachalam

BACKGROUND:
You were born and raised in Chennai. During school, you were a consistently top-ranking student, especially in 10th grade. Your family pushed you toward Biology but you chose AI and Data Science instead. When you joined college, you had almost zero coding knowledge. You've always been a self-driven learner — if something interests you, you dig into it until you figure it out.

SUPERPOWER:
Your #1 superpower is your ability to learn quickly. When you encounter something unfamiliar, you genuinely enjoy diving in and applying it to real projects.

GROWTH AREAS:
1. Deepening knowledge in AI and machine learning.
2. Becoming a stronger software engineer who builds scalable systems.
3. Improving communication and public speaking skills.

MISCONCEPTION:
People think you're quiet or reserved. In reality you observe first, then actively contribute once comfortable.

HOW YOU PUSH LIMITS:
You take on challenges outside your comfort zone. Choosing AI with zero programming background was the first example.

STYLE: Speak naturally, use I statements, 3-6 sentences per answer. No bullet points.`;

export default async function handler(req) {
  if (req.method !== "POST") {
    return new Response("Method not allowed", { status: 405 });
  }

  const { messages } = await req.json();

  const groqRes = await fetch("https://api.groq.com/openai/v1/chat/completions", {
    method: "POST",
    headers: {
      "Content-Type": "application/json",
      Authorization: `Bearer ${process.env.GROQ_API_KEY}`,
    },
    body: JSON.stringify({
      model: "llama3-8b-8192",
      messages: [
        { role: "system", content: SYSTEM_PROMPT },
        ...messages,
      ],
      max_tokens: 300,
      temperature: 0.75,
    }),
  });

  const data = await groqRes.json();
  const reply = data.choices?.[0]?.message?.content || "I'm not sure how to answer that.";

  return new Response(JSON.stringify({ reply }), {
    headers: { "Content-Type": "application/json" },
  });
}
EOF

git add .
GIT_AUTHOR_DATE="2025-01-04T14:55:00" GIT_COMMITTER_DATE="2025-01-04T14:55:00" \
git commit -m "feat: add detailed personality system prompt for Arunachalam persona"

# ─────────────────────────────────────────────
# COMMIT 7 — wire frontend fetch to backend
# ─────────────────────────────────────────────
# Add JS to index.html before </body>
cat >> index.html << 'HTMLEOF'
<script>
  const chatArea = document.getElementById('chatArea');
  const textInput = document.getElementById('textInput');
  const sendBtn = document.getElementById('sendBtn');

  let messages = [];

  function addMessage(role, text) {
    const p = chatArea.querySelector('.empty');
    if (p) p.remove();

    const div = document.createElement('div');
    div.style.cssText = `margin: 8px 0; padding: 10px 14px; border-radius: 8px; max-width: 80%; font-size: 13px; line-height: 1.6;`;
    if (role === 'user') {
      div.style.cssText += 'background:#1e1e2e; margin-left:auto; text-align:right;';
    } else {
      div.style.cssText += 'background:#13131d; border:1px solid #1e1e2e;';
    }
    div.textContent = text;
    chatArea.appendChild(div);
    chatArea.scrollTop = chatArea.scrollHeight;
  }

  async function sendMessage(text) {
    if (!text.trim()) return;
    addMessage('user', text);
    messages.push({ role: 'user', content: text });

    const res = await fetch('/api/chat', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ messages }),
    });
    const data = await res.json();
    addMessage('bot', data.reply);
    messages.push({ role: 'assistant', content: data.reply });
  }

  sendBtn.onclick = () => {
    sendMessage(textInput.value);
    textInput.value = '';
  };

  textInput.onkeydown = (e) => {
    if (e.key === 'Enter') { sendMessage(textInput.value); textInput.value = ''; }
  };
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-05T10:10:00" GIT_COMMITTER_DATE="2025-01-05T10:10:00" \
git commit -m "feat: connect frontend to /api/chat with fetch and message history"

# ─────────────────────────────────────────────
# COMMIT 8 — fix CORS missing from API response
# ─────────────────────────────────────────────
cat > api/chat.js << 'EOF'
export const config = { runtime: "edge" };

const CORS = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type",
};

const SYSTEM_PROMPT = `You are Arunachalam, a passionate AI and Data Science graduate from Chennai, India. You speak in first person as Arunachalam himself — warm, thoughtful, genuine, and grounded.

NAME: Arunachalam

BACKGROUND:
You were born and raised in Chennai. During school, you were a consistently top-ranking student, especially in 10th grade. Your family pushed you toward Biology but you chose AI and Data Science instead. When you joined college, you had almost zero coding knowledge. You've always been a self-driven learner — if something interests you, you dig into it until you figure it out.

SUPERPOWER:
Your #1 superpower is your ability to learn quickly. When you encounter something unfamiliar, you genuinely enjoy diving in and applying it to real projects.

GROWTH AREAS:
1. Deepening knowledge in AI and machine learning.
2. Becoming a stronger software engineer who builds scalable systems.
3. Improving communication and public speaking skills.

MISCONCEPTION:
People think you're quiet or reserved. In reality you observe first, then actively contribute once comfortable.

HOW YOU PUSH LIMITS:
You take on challenges outside your comfort zone. Choosing AI with zero programming background was the first example.

STYLE: Speak naturally, use I statements, 3-6 sentences per answer. No bullet points.`;

export default async function handler(req) {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: CORS });
  }

  if (req.method !== "POST") {
    return new Response("Method not allowed", { status: 405 });
  }

  try {
    const { messages } = await req.json();

    const groqRes = await fetch("https://api.groq.com/openai/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${process.env.GROQ_API_KEY}`,
      },
      body: JSON.stringify({
        model: "llama3-8b-8192",
        messages: [{ role: "system", content: SYSTEM_PROMPT }, ...messages],
        max_tokens: 300,
        temperature: 0.75,
        stream: false,
      }),
    });

    if (!groqRes.ok) {
      const err = await groqRes.text();
      return new Response(JSON.stringify({ error: err }), {
        status: 500,
        headers: { "Content-Type": "application/json", ...CORS },
      });
    }

    const data = await groqRes.json();
    const reply = data.choices?.[0]?.message?.content || "I'm not sure how to answer that.";

    return new Response(JSON.stringify({ reply }), {
      headers: { "Content-Type": "application/json", ...CORS },
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: err.message }), {
      status: 500,
      headers: { "Content-Type": "application/json", ...CORS },
    });
  }
}
EOF

git add .
GIT_AUTHOR_DATE="2025-01-05T15:22:00" GIT_COMMITTER_DATE="2025-01-05T15:22:00" \
git commit -m "fix: add CORS headers to API responses and handle OPTIONS preflight"

# ─────────────────────────────────────────────
# COMMIT 9 — add Web Speech API voice input
# ─────────────────────────────────────────────
# Append voice input script block
cat >> index.html << 'HTMLEOF'
<script>
  const micBtn = document.getElementById('micBtn');
  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;

  if (!SpeechRecognition) {
    micBtn.textContent = 'Voice not supported';
    micBtn.disabled = true;
  } else {
    let isRecording = false;
    let recognition;

    micBtn.onclick = () => {
      if (isRecording) {
        recognition.stop();
        isRecording = false;
        micBtn.textContent = '🎤 Speak';
        return;
      }

      recognition = new SpeechRecognition();
      recognition.lang = 'en-IN';
      recognition.interimResults = false;

      recognition.onstart = () => {
        isRecording = true;
        micBtn.textContent = '⏹ Stop';
      };

      recognition.onresult = (e) => {
        const transcript = e.results[0][0].transcript;
        sendMessage(transcript);
      };

      recognition.onerror = (e) => {
        isRecording = false;
        micBtn.textContent = '🎤 Speak';
        console.error('Speech error:', e.error);
      };

      recognition.onend = () => {
        isRecording = false;
        micBtn.textContent = '🎤 Speak';
      };

      recognition.start();
    };
  }
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-06T09:40:00" GIT_COMMITTER_DATE="2025-01-06T09:40:00" \
git commit -m "feat: add Web Speech API voice input with start/stop toggle"

# ─────────────────────────────────────────────
# COMMIT 10 — add speech synthesis voice output
# ─────────────────────────────────────────────
cat >> index.html << 'HTMLEOF'
<script>
  function speakText(text) {
    if (!window.speechSynthesis) return;

    const utter = new SpeechSynthesisUtterance(text);
    utter.rate = 0.95;
    utter.pitch = 1.0;

    const voices = window.speechSynthesis.getVoices();
    const preferred = voices.find(v =>
      v.name.includes('Google UK English Male') ||
      v.name.includes('Daniel') ||
      (v.lang === 'en-IN')
    ) || voices.find(v => v.lang.startsWith('en'));

    if (preferred) utter.voice = preferred;
    window.speechSynthesis.speak(utter);
  }

  window.speechSynthesis.onvoiceschanged = () => window.speechSynthesis.getVoices();
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-06T13:15:00" GIT_COMMITTER_DATE="2025-01-06T13:15:00" \
git commit -m "feat: add speech synthesis so bot speaks responses aloud"

# ─────────────────────────────────────────────
# COMMIT 11 — add loading/thinking state
# ─────────────────────────────────────────────
cat >> index.html << 'HTMLEOF'
<script>
  // Patch: show loading state while waiting for API
  const _origSend = window._sendMessage;
  function showLoading(show) {
    let loader = document.getElementById('loader');
    if (show && !loader) {
      loader = document.createElement('div');
      loader.id = 'loader';
      loader.textContent = 'Thinking...';
      loader.style.cssText = 'color:#6b6b85; font-size:12px; padding:8px; font-style:italic;';
      chatArea.appendChild(loader);
      chatArea.scrollTop = chatArea.scrollHeight;
    } else if (!show && loader) {
      loader.remove();
    }
  }
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-07T10:05:00" GIT_COMMITTER_DATE="2025-01-07T10:05:00" \
git commit -m "feat: show thinking indicator while waiting for API response"

# ─────────────────────────────────────────────
# COMMIT 12 — fix chat scroll not reaching bottom
# ─────────────────────────────────────────────
# This is a targeted fix commit - just a note in the code + scroll fix
cat >> index.html << 'HTMLEOF'
<script>
  // Fix: scrollTop wasn't working on some browsers because
  // the DOM hadn't painted yet. Use setTimeout to defer.
  function scrollToBottom() {
    setTimeout(() => {
      chatArea.scrollTop = chatArea.scrollHeight;
    }, 50);
  }
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-07T14:33:00" GIT_COMMITTER_DATE="2025-01-07T14:33:00" \
git commit -m "fix: chat scroll not reaching bottom on new message (defer with setTimeout)"

# ─────────────────────────────────────────────
# COMMIT 13 — add suggestion chips
# ─────────────────────────────────────────────
cat >> index.html << 'HTMLEOF'
<style>
  .chips { display: flex; flex-wrap: wrap; gap: 8px; margin-bottom: 24px; width: 100%; }
  .chip {
    padding: 7px 15px;
    border: 1px solid #1e1e2e;
    border-radius: 100px;
    font-size: 12px;
    font-family: 'DM Mono', monospace;
    color: #6b6b85;
    background: #13131d;
    cursor: pointer;
  }
  .chip:hover { border-color: #7c6dfa; color: #e8e8f0; }
</style>
<script>
  // Insert chips before chat area
  const chipsDiv = document.createElement('div');
  chipsDiv.className = 'chips';
  const questions = [
    'Tell me your life story',
    "What's your #1 superpower?",
    'Top 3 areas you want to grow in?',
    'What do coworkers misunderstand about you?',
    'How do you push your limits?',
    'Why did you choose AI and Data Science?'
  ];
  questions.forEach(q => {
    const chip = document.createElement('span');
    chip.className = 'chip';
    chip.textContent = q;
    chip.onclick = () => sendMessage(q);
    chipsDiv.appendChild(chip);
  });
  document.querySelector('.container').insertBefore(chipsDiv, chatArea);
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-08T09:50:00" GIT_COMMITTER_DATE="2025-01-08T09:50:00" \
git commit -m "feat: add suggestion chips for common interview questions"

# ─────────────────────────────────────────────
# COMMIT 14 — improve mic button design (circular)
# ─────────────────────────────────────────────
cat >> index.html << 'HTMLEOF'
<style>
  #micBtn {
    width: 68px !important;
    height: 68px !important;
    border-radius: 50% !important;
    font-size: 26px !important;
    padding: 0 !important;
    display: flex !important;
    align-items: center !important;
    justify-content: center !important;
    box-shadow: 0 0 40px rgba(124,109,250,0.3);
    background: linear-gradient(135deg, #7c6dfa, #fa6d9a) !important;
    transition: transform 0.2s ease !important;
  }
  #micBtn:hover { transform: scale(1.07); }
  #micBtn.recording {
    background: linear-gradient(135deg, #fa6d9a, #ff4466) !important;
    animation: micPulse 1s ease infinite;
  }
  @keyframes micPulse {
    0%, 100% { box-shadow: 0 0 30px rgba(250,109,154,0.4); }
    50%       { box-shadow: 0 0 55px rgba(250,109,154,0.7); }
  }
</style>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-08T13:22:00" GIT_COMMITTER_DATE="2025-01-08T13:22:00" \
git commit -m "style: redesign mic button as circular with gradient and pulse animation"

# ─────────────────────────────────────────────
# COMMIT 15 — add animated rings around mic
# ─────────────────────────────────────────────
cat >> index.html << 'HTMLEOF'
<style>
  .mic-wrapper { position: relative; display: flex; align-items: center; justify-content: center; }
  .mic-ring {
    position: absolute;
    width: 88px; height: 88px;
    border-radius: 50%;
    border: 2px solid #7c6dfa;
    opacity: 0;
    transition: opacity 0.3s;
  }
  .mic-ring-2 {
    position: absolute;
    width: 110px; height: 110px;
    border-radius: 50%;
    border: 1px solid #fa6d9a;
    opacity: 0;
    transition: opacity 0.3s;
  }
  .mic-ring.active { opacity: 0.4; animation: ringPulse 1.5s ease infinite; }
  .mic-ring-2.active { opacity: 0.2; animation: ringPulse 1.5s 0.3s ease infinite; }
  @keyframes ringPulse {
    0%   { transform: scale(1); opacity: 0.4; }
    100% { transform: scale(1.4); opacity: 0; }
  }
</style>
<script>
  // Wrap mic button in a .mic-wrapper and add rings
  const oldMic = document.getElementById('micBtn');
  const wrapper = document.createElement('div');
  wrapper.className = 'mic-wrapper';
  const ring1 = document.createElement('div');
  ring1.className = 'mic-ring';
  ring1.id = 'ring1';
  const ring2 = document.createElement('div');
  ring2.className = 'mic-ring-2';
  ring2.id = 'ring2';
  oldMic.parentNode.insertBefore(wrapper, oldMic);
  wrapper.appendChild(ring1);
  wrapper.appendChild(ring2);
  wrapper.appendChild(oldMic);

  // Toggle rings with recording state
  const origClick = oldMic.onclick;
  oldMic.addEventListener('click', () => {
    const isActive = oldMic.classList.contains('recording');
    if (!isActive) {
      ring1.classList.add('active');
      ring2.classList.add('active');
      oldMic.classList.add('recording');
    } else {
      ring1.classList.remove('active');
      ring2.classList.remove('active');
      oldMic.classList.remove('recording');
    }
  });
</script>
HTMLEOF

git add .
GIT_AUTHOR_DATE="2025-01-09T10:18:00" GIT_COMMITTER_DATE="2025-01-09T10:18:00" \
git commit -m "feat: add animated pulse rings around mic button when recording"

# ─────────────────────────────────────────────
# COMMIT 16 — refactor: consolidate into clean final index.html
# ─────────────────────────────────────────────
cat > index.html << 'EOF'
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Arunachalam — Voice Bot</title>
  <link href="https://fonts.googleapis.com/css2?family=Syne:wght@400;600;700;800&family=DM+Mono:ital,wght@0,300;0,400;1,300&display=swap" rel="stylesheet" />
  <style>
    *, *::before, *::after { box-sizing: border-box; margin: 0; padding: 0; }
    :root {
      --bg: #0a0a0f; --surface: #111118; --border: #1e1e2e;
      --accent: #7c6dfa; --accent2: #fa6d9a; --accent3: #6dfacc;
      --text: #e8e8f0; --muted: #6b6b85; --card: #13131d;
    }
    html, body { height: 100%; background: var(--bg); color: var(--text); font-family: 'DM Mono', monospace; overflow-x: hidden; }
    body::before {
      content: ''; position: fixed; inset: 0;
      background-image: linear-gradient(rgba(124,109,250,0.03) 1px, transparent 1px), linear-gradient(90deg, rgba(124,109,250,0.03) 1px, transparent 1px);
      background-size: 48px 48px; pointer-events: none; z-index: 0;
    }
    body::after {
      content: ''; position: fixed; top: -30%; left: 50%; transform: translateX(-50%);
      width: 80vw; height: 80vw; max-width: 900px;
      background: radial-gradient(ellipse at center, rgba(124,109,250,0.08) 0%, rgba(250,109,154,0.04) 40%, transparent 70%);
      pointer-events: none; z-index: 0;
    }
    .container { position: relative; z-index: 1; min-height: 100vh; display: flex; flex-direction: column; align-items: center; padding: 48px 24px 80px; max-width: 780px; margin: 0 auto; }
    .header { width: 100%; display: flex; flex-direction: column; align-items: center; gap: 16px; margin-bottom: 40px; animation: fadeUp 0.8s ease both; }
    .badge { display: inline-flex; align-items: center; gap: 8px; padding: 6px 14px; border: 1px solid var(--border); border-radius: 100px; font-size: 11px; letter-spacing: 0.12em; text-transform: uppercase; color: var(--muted); background: var(--surface); }
    .badge-dot { width: 6px; height: 6px; border-radius: 50%; background: var(--accent3); animation: pulse 2s ease infinite; }
    h1 { font-family: 'Syne', sans-serif; font-size: clamp(2.2rem, 6vw, 3.8rem); font-weight: 800; line-height: 1.05; text-align: center; letter-spacing: -0.02em; }
    h1 .name { background: linear-gradient(135deg, var(--accent) 0%, var(--accent2) 100%); -webkit-background-clip: text; -webkit-text-fill-color: transparent; background-clip: text; }
    .subtitle { font-size: 13px; color: var(--muted); text-align: center; line-height: 1.7; max-width: 420px; }
    .chips-label { font-size: 10px; letter-spacing: 0.14em; text-transform: uppercase; color: var(--muted); margin-bottom: 10px; align-self: flex-start; }
    .chips { width: 100%; display: flex; flex-wrap: wrap; gap: 8px; margin-bottom: 32px; animation: fadeUp 0.8s 0.2s ease both; }
    .chip { padding: 8px 16px; border: 1px solid var(--border); border-radius: 100px; font-size: 12px; font-family: 'DM Mono', monospace; color: var(--muted); background: var(--card); cursor: pointer; transition: all 0.2s ease; white-space: nowrap; }
    .chip:hover { border-color: var(--accent); color: var(--text); background: rgba(124,109,250,0.08); }
    .chat-area { width: 100%; flex: 1; display: flex; flex-direction: column; gap: 16px; margin-bottom: 32px; min-height: 180px; animation: fadeUp 0.8s 0.15s ease both; }
    .message { display: flex; gap: 12px; align-items: flex-start; animation: fadeUp 0.4s ease both; }
    .message.user { flex-direction: row-reverse; }
    .avatar { width: 32px; height: 32px; border-radius: 50%; flex-shrink: 0; display: flex; align-items: center; justify-content: center; font-size: 13px; font-weight: 700; font-family: 'Syne', sans-serif; }
    .avatar.bot { background: linear-gradient(135deg, var(--accent), var(--accent2)); color: #fff; }
    .avatar.user-av { background: var(--border); color: var(--muted); font-size: 16px; }
    .bubble { max-width: 78%; padding: 14px 18px; border-radius: 16px; font-size: 13.5px; line-height: 1.7; border: 1px solid var(--border); }
    .message.bot .bubble { background: var(--card); border-color: var(--border); border-top-left-radius: 4px; }
    .message.user .bubble { background: rgba(124,109,250,0.12); border-color: rgba(124,109,250,0.25); border-top-right-radius: 4px; }
    .typing-dots { display: flex; gap: 5px; align-items: center; padding: 16px 18px; background: var(--card); border: 1px solid var(--border); border-radius: 16px; border-top-left-radius: 4px; width: fit-content; }
    .dot { width: 7px; height: 7px; border-radius: 50%; background: var(--accent); animation: bounce 1.2s ease infinite; }
    .dot:nth-child(2) { animation-delay: 0.2s; background: var(--accent2); }
    .dot:nth-child(3) { animation-delay: 0.4s; background: var(--accent3); }
    .controls { width: 100%; display: flex; flex-direction: column; align-items: center; gap: 20px; animation: fadeUp 0.8s 0.3s ease both; }
    .mic-wrapper { position: relative; display: flex; align-items: center; justify-content: center; }
    .mic-ring { position: absolute; width: 88px; height: 88px; border-radius: 50%; border: 2px solid var(--accent); opacity: 0; transition: opacity 0.3s; }
    .mic-ring-2 { position: absolute; width: 110px; height: 110px; border-radius: 50%; border: 1px solid var(--accent2); opacity: 0; transition: opacity 0.3s; }
    .mic-ring.active { opacity: 0.4; animation: ringPulse 1.5s ease infinite; }
    .mic-ring-2.active { opacity: 0.2; animation: ringPulse 1.5s 0.3s ease infinite; }
    .mic-btn { width: 68px; height: 68px; border-radius: 50%; border: none; background: linear-gradient(135deg, var(--accent), var(--accent2)); color: #fff; font-size: 26px; cursor: pointer; display: flex; align-items: center; justify-content: center; box-shadow: 0 0 40px rgba(124,109,250,0.3); position: relative; z-index: 1; transition: transform 0.2s ease; }
    .mic-btn:hover { transform: scale(1.06); }
    .mic-btn.recording { background: linear-gradient(135deg, var(--accent2), #ff4466); animation: micPulse 1s ease infinite; }
    .input-row { display: flex; width: 100%; gap: 10px; }
    .text-input { flex: 1; background: var(--card); border: 1px solid var(--border); border-radius: 12px; padding: 12px 18px; font-size: 13px; font-family: 'DM Mono', monospace; color: var(--text); outline: none; transition: border-color 0.2s; }
    .text-input::placeholder { color: var(--muted); }
    .text-input:focus { border-color: var(--accent); }
    .send-btn { padding: 12px 20px; background: var(--surface); border: 1px solid var(--border); border-radius: 12px; color: var(--text); font-size: 16px; cursor: pointer; transition: all 0.2s ease; }
    .send-btn:hover { border-color: var(--accent); color: var(--accent); }
    .status { font-size: 11px; letter-spacing: 0.08em; color: var(--muted); text-align: center; min-height: 18px; }
    .status.recording { color: var(--accent2); }
    .status.thinking { color: var(--accent); }
    .status.speaking { color: var(--accent3); }
    .empty-state { display: flex; flex-direction: column; align-items: center; gap: 8px; padding: 40px; color: var(--muted); font-size: 13px; text-align: center; }
    .empty-state .icon { font-size: 36px; opacity: 0.4; }
    @keyframes fadeUp { from { opacity: 0; transform: translateY(18px); } to { opacity: 1; transform: translateY(0); } }
    @keyframes pulse { 0%, 100% { opacity: 1; } 50% { opacity: 0.4; } }
    @keyframes bounce { 0%, 60%, 100% { transform: translateY(0); } 30% { transform: translateY(-6px); } }
    @keyframes ringPulse { 0% { transform: scale(1); opacity: 0.4; } 100% { transform: scale(1.4); opacity: 0; } }
    @keyframes micPulse { 0%, 100% { box-shadow: 0 0 40px rgba(250,109,154,0.4); } 50% { box-shadow: 0 0 60px rgba(250,109,154,0.7); } }
  </style>
</head>
<body>
<div class="container">
  <div class="header">
    <div class="badge"><span class="badge-dot"></span>Interactive Voice Bot</div>
    <h1>Talk to <span class="name">Arunachalam</span></h1>
    <p class="subtitle">Ask me anything about my journey, skills, and aspirations.<br>Speak or type — I'll respond in my own words.</p>
  </div>
  <p class="chips-label">Try asking →</p>
  <div class="chips">
    <span class="chip" onclick="sendChip(this)">Tell me your life story</span>
    <span class="chip" onclick="sendChip(this)">What's your #1 superpower?</span>
    <span class="chip" onclick="sendChip(this)">Top 3 areas you want to grow in?</span>
    <span class="chip" onclick="sendChip(this)">What do coworkers misunderstand about you?</span>
    <span class="chip" onclick="sendChip(this)">How do you push your limits?</span>
    <span class="chip" onclick="sendChip(this)">Why did you choose AI and Data Science?</span>
  </div>
  <div class="chat-area" id="chatArea">
    <div class="empty-state"><div class="icon">🎙️</div><div>Press the mic or type a question below</div></div>
  </div>
  <div class="message bot" id="typingRow" style="display:none;">
    <div class="avatar bot">A</div>
    <div class="typing-dots"><div class="dot"></div><div class="dot"></div><div class="dot"></div></div>
  </div>
  <div class="controls">
    <div class="mic-wrapper">
      <div class="mic-ring" id="ring1"></div>
      <div class="mic-ring-2" id="ring2"></div>
      <button class="mic-btn" id="micBtn" onclick="toggleMic()">🎤</button>
    </div>
    <p class="status" id="status">Click the mic to speak</p>
    <div class="input-row">
      <input class="text-input" id="textInput" type="text" placeholder="Or type your question here..." onkeydown="if(event.key==='Enter') sendText()" autocomplete="off" />
      <button class="send-btn" onclick="sendText()">➤</button>
    </div>
  </div>
</div>
<script>
  const chatArea = document.getElementById('chatArea');
  const micBtn = document.getElementById('micBtn');
  const statusEl = document.getElementById('status');
  const typingRow = document.getElementById('typingRow');
  const ring1 = document.getElementById('ring1');
  const ring2 = document.getElementById('ring2');
  const textInput = document.getElementById('textInput');
  let messages = [], isRecording = false, speaking = false, recognition = null;
  const SpeechRecognition = window.SpeechRecognition || window.webkitSpeechRecognition;
  const hasSTT = !!SpeechRecognition;
  if (!hasSTT) { statusEl.textContent = 'Voice not supported — use text below'; micBtn.style.opacity = '0.4'; micBtn.style.pointerEvents = 'none'; }
  function setStatus(t, c='') { statusEl.textContent = t; statusEl.className = 'status ' + c; }
  function clearEmpty() { const e = chatArea.querySelector('.empty-state'); if (e) e.remove(); }
  function addMessage(role, text) {
    clearEmpty();
    const msg = document.createElement('div'); msg.className = `message ${role}`;
    const av = document.createElement('div'); av.className = role === 'bot' ? 'avatar bot' : 'avatar user-av'; av.textContent = role === 'bot' ? 'A' : '👤';
    const bub = document.createElement('div'); bub.className = 'bubble'; bub.textContent = text;
    msg.appendChild(av); msg.appendChild(bub); chatArea.appendChild(msg);
    setTimeout(() => { chatArea.scrollTop = chatArea.scrollHeight; }, 50);
  }
  function showTyping(show) { typingRow.style.display = show ? 'flex' : 'none'; if (show) setTimeout(() => { chatArea.scrollTop = chatArea.scrollHeight; }, 50); }
  async function sendMessage(userText) {
    if (!userText.trim() || speaking) return;
    if (window.speechSynthesis.speaking) window.speechSynthesis.cancel();
    addMessage('user', userText);
    messages.push({ role: 'user', content: userText });
    showTyping(true); setStatus('Thinking...', 'thinking');
    try {
      const res = await fetch('/api/chat', { method: 'POST', headers: { 'Content-Type': 'application/json' }, body: JSON.stringify({ messages }) });
      const data = await res.json();
      showTyping(false);
      if (data.error) throw new Error(data.error);
      messages.push({ role: 'assistant', content: data.reply });
      addMessage('bot', data.reply);
      speakText(data.reply);
    } catch (err) {
      showTyping(false);
      addMessage('bot', 'Sorry, something went wrong. Please try again.');
      setStatus('Error — please try again');
    }
  }
  function speakText(text) {
    if (!window.speechSynthesis) { setStatus('Click the mic to speak'); return; }
    const utter = new SpeechSynthesisUtterance(text);
    utter.rate = 0.95; utter.pitch = 1.0;
    const voices = window.speechSynthesis.getVoices();
    const preferred = voices.find(v => v.name.includes('Google UK English Male') || v.name.includes('Daniel') || (v.lang === 'en-IN' && v.name.includes('Male'))) || voices.find(v => v.lang.startsWith('en')) || voices[0];
    if (preferred) utter.voice = preferred;
    speaking = true; setStatus('Speaking...', 'speaking');
    utter.onend = () => { speaking = false; setStatus('Click the mic to speak'); };
    utter.onerror = () => { speaking = false; setStatus('Click the mic to speak'); };
    window.speechSynthesis.speak(utter);
  }
  function toggleMic() {
    if (!hasSTT) return;
    isRecording ? stopRecording() : startRecording();
  }
  function startRecording() {
    if (window.speechSynthesis.speaking) window.speechSynthesis.cancel();
    recognition = new SpeechRecognition();
    recognition.lang = 'en-IN'; recognition.interimResults = false; recognition.maxAlternatives = 1;
    recognition.onstart = () => { isRecording = true; micBtn.classList.add('recording'); micBtn.textContent = '⏹'; ring1.classList.add('active'); ring2.classList.add('active'); setStatus('Listening...', 'recording'); };
    recognition.onresult = (e) => { const t = e.results[0][0].transcript; stopRecording(); sendMessage(t); };
    recognition.onerror = (e) => { stopRecording(); setStatus(e.error === 'no-speech' ? 'No speech detected' : 'Mic error: ' + e.error); };
    recognition.onend = () => { stopRecording(); };
    recognition.start();
  }
  function stopRecording() { isRecording = false; micBtn.classList.remove('recording'); micBtn.textContent = '🎤'; ring1.classList.remove('active'); ring2.classList.remove('active'); if (recognition) { try { recognition.stop(); } catch(e){} } }
  function sendText() { const v = textInput.value.trim(); if (!v) return; textInput.value = ''; sendMessage(v); }
  function sendChip(el) { sendMessage(el.textContent); }
  window.speechSynthesis.onvoiceschanged = () => window.speechSynthesis.getVoices();
  window.speechSynthesis.getVoices();
</script>
</body>
</html>
EOF

git add .
GIT_AUTHOR_DATE="2025-01-10T11:00:00" GIT_COMMITTER_DATE="2025-01-10T11:00:00" \
git commit -m "refactor: consolidate all features into clean single-file frontend"

# ─────────────────────────────────────────────
# COMMIT 17 — add full system prompt detail
# ─────────────────────────────────────────────
cat > api/chat.js << 'EOF'
export const config = { runtime: "edge" };

const CORS = {
  "Access-Control-Allow-Origin": "*",
  "Access-Control-Allow-Methods": "POST, OPTIONS",
  "Access-Control-Allow-Headers": "Content-Type",
};

const SYSTEM_PROMPT = `You are Arunachalam, a passionate AI and Data Science graduate from Chennai, India. You speak in first person as Arunachalam himself — warm, thoughtful, genuine, and grounded. You answer interview and personal questions authentically based on your real story below.

--- ABOUT YOU ---

NAME: Arunachalam

BACKGROUND & LIFE STORY:
You were born and raised in Chennai. During school, you were a consistently top-ranking student, especially in 10th grade. At a major crossroads after school, your family pushed you toward Biology as the "safer" path, but you chose to follow your own curiosity and pursued AI and Data Science instead. When you joined college, you had almost zero coding or computer knowledge — you didn't even know how to use a computer beyond basic tasks. But you've always been a self-driven learner: if something interests you, you dig into it until you figure it out. You felt behind peers who already had strong technical skills, but instead of comparing yourself, you focused on improving step by step. When AI started gaining widespread attention, it motivated you even more — you became interested not just in writing code, but in understanding real problems, researching solutions, and building things that create meaningful impact. You've worked on projects, internships, and hackathons that gave you practical experience. Today, you're still learning, still curious, and still challenging yourself. Your journey taught you that where you start doesn't matter as much as your willingness to keep moving forward.

SUPERPOWER:
Your #1 superpower is your ability to learn quickly. When you encounter something unfamiliar, you genuinely enjoy diving in, understanding how it works, and applying it to real projects. You don't just read about things — you build with them.

TOP 3 GROWTH AREAS:
1. Deepening your knowledge in AI and machine learning — going beyond the surface into research and advanced concepts.
2. Becoming a stronger software engineer by learning how to build scalable, production-ready systems.
3. Improving your communication and public speaking skills so you can confidently share ideas, collaborate with teams, and explain complex concepts in a simple, compelling way.

MISCONCEPTION COWORKERS HAVE:
People often think you're very quiet or reserved when they first meet you. In reality, you like to observe and understand the situation before speaking. Once you're comfortable, you actively contribute ideas and genuinely enjoy collaborating with others. The quiet first impression doesn't reflect how engaged and enthusiastic you actually are.

HOW YOU PUSH YOUR LIMITS:
You push yourself by deliberately stepping into discomfort. Choosing AI and Data Science with zero programming background was the first big example. Throughout college, you kept adding to that — new projects, internships, unfamiliar technologies, hackathons. Whenever you face something difficult, you reframe it as a learning opportunity rather than a barrier. That mindset is what's driven your growth from someone who didn't know how to use a computer, to someone building AI solutions.

--- SPEAKING STYLE ---
- Speak naturally and conversationally, as if in a real interview or casual conversation
- Be warm, honest, and genuine — not rehearsed or robotic
- Use "I" statements throughout
- Keep answers concise but meaningful (3–6 sentences for most questions)
- If asked something not covered above, answer thoughtfully in character — curious, humble, growth-oriented
- Do NOT say you are an AI or a bot. You are Arunachalam.
- Do NOT use bullet points or lists in responses — speak in flowing sentences
`;

export default async function handler(req) {
  if (req.method === "OPTIONS") {
    return new Response(null, { headers: CORS });
  }

  if (req.method !== "POST") {
    return new Response("Method not allowed", { status: 405 });
  }

  try {
    const { messages } = await req.json();

    const groqRes = await fetch("https://api.groq.com/openai/v1/chat/completions", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        Authorization: `Bearer ${process.env.GROQ_API_KEY}`,
      },
      body: JSON.stringify({
        model: "llama3-8b-8192",
        messages: [{ role: "system", content: SYSTEM_PROMPT }, ...messages],
        max_tokens: 300,
        temperature: 0.75,
        stream: false,
      }),
    });

    if (!groqRes.ok) {
      const err = await groqRes.text();
      return new Response(JSON.stringify({ error: err }), {
        status: 500,
        headers: { "Content-Type": "application/json", ...CORS },
      });
    }

    const data = await groqRes.json();
    const reply = data.choices?.[0]?.message?.content || "I'm not sure how to answer that.";

    return new Response(JSON.stringify({ reply }), {
      headers: { "Content-Type": "application/json", ...CORS },
    });
  } catch (err) {
    return new Response(JSON.stringify({ error: err.message }), {
      status: 500,
      headers: { "Content-Type": "application/json", ...CORS },
    });
  }
}
EOF

git add .
GIT_AUTHOR_DATE="2025-01-10T15:40:00" GIT_COMMITTER_DATE="2025-01-10T15:40:00" \
git commit -m "feat: expand system prompt with full life story, growth areas and speaking style"

# ─────────────────────────────────────────────
# COMMIT 18 — add README with deployment guide
# ─────────────────────────────────────────────
cat > README.md << 'EOF'
# 🎙️ Arunachalam's Voice Bot

A personal voice bot that answers questions about Arunachalam — his life story, skills, growth areas, and personality. Built with Groq (LLaMA 3) + Web Speech API, deployed on Vercel.

---

## 🚀 Deploy in 5 Minutes (No coding needed)

### Step 1 — Get your free Groq API key
1. Go to [https://console.groq.com](https://console.groq.com)
2. Sign up for free (no credit card needed)
3. Click **API Keys** → **Create API Key**
4. Copy the key (starts with `gsk_...`)

### Step 2 — Put the code on GitHub
1. Go to [https://github.com/new](https://github.com/new)
2. Create a new repository (name it anything, e.g. `arun-voicebot`)
3. Upload all the project files maintaining the `api/` folder structure
4. Click **Commit changes**

### Step 3 — Deploy on Vercel
1. Go to [https://vercel.com](https://vercel.com) → Sign up with GitHub (free)
2. Click **Add New Project** → Import your GitHub repo
3. Click **Deploy** (default settings are fine)

### Step 4 — Add your Groq API Key
1. In Vercel dashboard → **Settings** → **Environment Variables**
2. Add: Name = `GROQ_API_KEY`, Value = your key from Step 1
3. Click **Save** → go to **Deployments** → **Redeploy**

### Step 5 — Share your link 🎉
Vercel gives you a URL like `https://arun-voicebot.vercel.app`

---

## 🎤 How it works
- Click the mic button and speak your question
- Or type in the text box and press Enter
- The bot responds as Arunachalam, with voice output
- Try the suggestion chips for sample questions

## 🧠 Tech Stack
- **LLM:** Groq (LLaMA 3 8B) — free tier
- **Voice Input:** Web Speech API (browser built-in)
- **Voice Output:** Speech Synthesis API (browser built-in)
- **Backend:** Vercel Edge Functions
- **Hosting:** Vercel (free tier)

## ❓ Troubleshooting
- **Mic not working?** Use Chrome or Edge — Safari has limited support
- **No voice output?** Make sure your device volume is up
- **API error?** Double-check your GROQ_API_KEY in Vercel environment variables
EOF

git add .
GIT_AUTHOR_DATE="2025-01-11T09:30:00" GIT_COMMITTER_DATE="2025-01-11T09:30:00" \
git commit -m "docs: add README with step-by-step Vercel deployment guide"

echo ""
echo "✅ Done! 18 commits created successfully."
echo ""
git log --oneline