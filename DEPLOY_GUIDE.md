# ORIN AI - Deployment Guide (For Everyone)

## 🚀 Option 1: Auto-Deploy (Easiest - No Script Needed)

Edit `index.html` directly on GitHub:

1. Go to: `index.html` in this repo
2. Click the pencil icon (Edit)
3. Make your changes
4. Scroll down and click "Commit changes"
5. Wait 1-2 minutes
6. Changes live on https://orin.work

**How it works:**
- GitHub → Render (auto pulls) → Cloudflare (CDN) → orin.work
- No script needed. Automatic.

---

## 📝 Option 2: Use Deploy Script (For Developers)

If you want to work locally:

### Mac/Linux:
```bash
bash <(curl -s https://raw.githubusercontent.com/0mnisciux/orin-ai-production/main/deploy.sh)
```

### What it does:
- Clones repo to your computer
- Pulls latest changes
- Shows you next steps
- That's it

Then:
```bash
cd orin-ai-production
edit index.html          # Edit in your editor
git add index.html
git commit -m "Update"
git push origin main
```

---

## Timeline

| Action | Time |
|--------|------|
| Edit + Commit | Instant |
| Render redeploy | 5-10 sec |
| Cloudflare cache | ~1 min |
| Live on orin.work | 1-2 min total |

---

## Cost

**$0** - Everything stays free forever

- GitHub (free tier)
- Render (free tier)
- Cloudflare (free tier)
- Namecheap (domain only)

---

## FAQ

**Q: Can a non-technical person deploy this?**
A: Yes. Option 1 (edit on GitHub) requires zero setup.

**Q: Where does my code live?**
A: GitHub repo + Render servers + Cloudflare CDN

**Q: Will it always be free?**
A: Yes. Free-tier limits are huge for small projects.

**Q: How do I customize the design?**
A: Edit colors/text in `index.html` and commit.

**Q: Do I need to know Git?**
A: No. Option 1 needs zero Git knowledge.

---

## 🚨 CRITICAL FIX: package.json Breaking Static Site Deployment

### The Issue
If your Render static site deployment keeps failing with **`npm error code TARGET`** or **`npm error code ERESOLVE`**, the culprit is likely a `package.json` file in your repository.

**Why?** Render detects `package.json` and automatically assumes your project is a Node.js application, triggering npm install and build processes. For pure static HTML sites, this causes build failures because:
- There's no build script to run
- Dependencies can't be resolved for a static-only site
- Render tries to execute npm commands on non-existent scripts

### The Solution
**DELETE the `package.json` file** if your site is purely static HTML/CSS/JS.

Steps:
1. Go to your GitHub repo
2. Find and open `package.json`
3. Click the three-dot menu → "Delete file"
4. Commit the deletion with message: "Delete package.json - static site only"
5. Trigger a manual deploy on Render Dashboard
6. ✅ Deployment should now succeed

### Why This Works
Once `package.json` is deleted, Render correctly identifies your project as a **Static Site** and:
- Skips npm dependency resolution
- Directly serves files from the Publish Directory (default: `./`)
- No build process needed
- Deployment completes in seconds

### Timeline Example
**Before Fix:**
- ❌ Deploy failed with npm errors
- ❌ Multiple failed attempts
- ❌ "Exited with status 1 while building your code"

**After Fix:**
- ✅ Deploy live for [commit hash]: Delete package.json
- ✅ Zero-downtime deployment
- ✅ Site immediately live at orin.work

### Key Takeaway
**For static-only sites: Keep your repo clean of build configuration files** (`package.json`, `gulpfile.js`, `webpack.config.js`, etc.) to let Render serve your static assets directly without attempting compilation.

---

Questions? Check the README or deployment logs on Render.
