#  Voice Bot

A personal voice bot that answers questions about Arunachalam — his life story, skills, growth areas, and personality. Built with Groq (LLaMA 3) + Web Speech API, deployed on Vercel.

---

## 🚀 Deploy in 5 Minutes (No coding needed)

### Step 1 — Get your free Groq API key
1. Go to [https://console.groq.com](https://console.groq.com)
2. Sign up for free (no credit card needed)
3. Click **API Keys** → **Create API Key**
4. Copy the key (starts with `gsk_...`)

---

### Step 2 — Put the code on GitHub
1. Go to [https://github.com/new](https://github.com/new)
2. Create a new repository (name it anything, e.g. `arun-voicebot`)
3. Upload all the project files into it:
   - `index.html`
   - `vercel.json`
   - `package.json`
   - `api/chat.js`
4. Click **Commit changes**

---

### Step 3 — Deploy on Vercel
1. Go to [https://vercel.com](https://vercel.com) → Sign up with GitHub (free)
2. Click **Add New Project** → Import your GitHub repo
3. Click **Deploy** (default settings are fine)

---

### Step 4 — Add your Groq API Key (secret, secure)
1. In your Vercel project dashboard, go to **Settings** → **Environment Variables**
2. Add:
   - **Name:** `GROQ_API_KEY`
   - **Value:** *(paste your key from Step 1)*
3. Click **Save**
4. Go to **Deployments** → click the 3 dots → **Redeploy**

---

### Step 5 — Share your link! 🎉
Vercel gives you a public URL like:
`https://arun-voicebot.vercel.app`

Anyone can open it — no installation, no setup, no API key needed from them.

---

## 🎤 How it works
- Click the **mic button** and speak your question
- Or **type** in the text box and press Enter
- The bot responds as Arunachalam, with voice output
- Try the **suggestion chips** for sample questions

## 🧠 Tech Stack
- **LLM:** Groq (LLaMA 3 8B) — free tier
- **Voice Input:** Web Speech API (built into browser)
- **Voice Output:** Speech Synthesis API (built into browser)
- **Backend:** Vercel Edge Functions (serverless)
- **Hosting:** Vercel (free tier)

## ❓ Troubleshooting
- **Mic not working?** Use Chrome or Edge — Safari has limited support
- **No voice output?** Make sure your device volume is up
- **API error?** Double-check your GROQ_API_KEY in Vercel environment variables
