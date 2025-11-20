# Deploy ORIN Revamp to Render (Free Tier)

**Complete guide to deploying the integrated orin-revamp site on Render for $0/month**

---

## Architecture Overview

This repo (`kodigo-ng-kawalan`) integrates:
- **Frontend**: orin-revamp (React + Vite + TypeScript)
- **Backend**: Express.js server
- **Deployment**: Render.com (free tier)
- **Build Process**: Multi-stage Docker build

---

## Prerequisites

1. **GitHub Account** - repo already set up
2. **Render Account** - Sign up at https://render.com (free)
3. **Node.js 20+** - for local testing

---

## Step 1: Verify Local Build

Before deploying, test locally:

```bash
# Clone the repo
git clone https://github.com/makagagahum/kodigo-ng-kawalan.git
cd kodigo-ng-kawalan

# Install dependencies
npm install
cd orin-revamp
npm install
cd ..

# Build orin-revamp
npm run build

# Start server
npm start

# Visit http://localhost:3000
```

**Expected Result**: Express server runs, serves orin-revamp static files from `/orin-revamp/dist`

---

## Step 2: Push to GitHub (if not already done)

```bash
git add .
git commit -m "feat: Ready for Render deployment"
git push origin main
```

---

## Step 3: Create Render Web Service

### 3.1 Login to Render Dashboard
- Go to https://dashboard.render.com
- Sign in with GitHub

### 3.2 Connect GitHub Repository
- Click **New** > **Web Service**
- Select **GitHub**
- Click **Connect Account** (if not already connected)
- Search for `kodigo-ng-kawalan`
- Click **Connect**

### 3.3 Configure Web Service

**Basic Settings:**
- **Name**: `orin-revamp` (or your preferred name)
- **Region**: Closest to your users (e.g., Singapore for Asia)
- **Branch**: `main`
- **Runtime**: `Docker`
- **Build Command**: (Auto-detected from Dockerfile)
- **Start Command**: (Auto-detected from Dockerfile)

**Environment**: Leave blank for now (free tier)

### 3.4 Choose Free Tier
- **Instance Type**: Free (0.5 CPU, 512 MB RAM)
- This is sufficient for a static React site + small Node.js backend

### 3.5 Deploy
- Click **Create Web Service**
- Render will build and deploy automatically
- Build logs appear in real-time

---

## Step 4: Monitor Deployment

### Checking Status
1. Go to your service dashboard
2. Watch **Logs** tab for build progress
3. When complete, see **Live URL** at top (e.g., `https://orin-revamp.onrender.com`)

### Common Build Issues

| Issue | Fix |
|-------|-----|
| Build fails: npm not found | Render auto-detects Node.js. If fails, add engines to package.json |
| Build fails: orin-revamp not found | Ensure /orin-revamp/package.json exists. |
| Service crashes | Check logs. Missing env vars or port issues. |
| Slow first load | Normal - free tier cold starts. |

---

## Step 5: Environment Variables (Optional)

If you add API keys or secrets:

1. Go to service dashboard > **Environment**
2. Add variables
3. Redeploy

---

## Free Tier Limits

- **CPU**: 0.5 (shared)
- **RAM**: 512 MB
- **Auto-sleep**: After 15 min inactivity
- **Bandwidth**: 100 GB/month

---

## Auto-Deploy on Push

Render automatically deploys on every push to `main` branch!

---

## Verification Checklist

- [ ] Service is live at your Render URL
- [ ] Frontend loads without errors
- [ ] Static assets load correctly
- [ ] Logs show no errors

---

## Troubleshooting

### Service Won't Start
Check Render dashboard logs for errors

### Build Fails
Verify:
1. Dockerfile paths are correct
2. orin-revamp/package.json exists
3. Node.js version >= 20.0.0

### Site is Slow
1. Cold start after 15 min sleep (normal)
2. Check bundle size with `npm run build`

---

## Next Steps

- Deploy to Render now!
- Add custom domain
- Integrate Cloudflare CDN
- Add monitoring

---

## Support

**Render Docs**: https://render.com/docs  
**GitHub Issues**: Report problems in repo
