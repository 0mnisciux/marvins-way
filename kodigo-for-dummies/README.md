# Kodigo for Dummies: Complete Setup Guide

**Welcome!** This folder contains everything you need to set up the entire Kodigo ng Kawalan infrastructure from scratch. No experience needed.

## What You'll Find Here

```
kodigo-for-dummies/
├── README.md                    # This file (start here)
├── QUICKSTART.md                # 5-minute quick start
├── setup.sh                     # Universal setup script (Mac/Linux)
├── setup.ps1                    # PowerShell setup script (Windows)
├── .env.example                 # Environment variables template
├── guides/
│   ├── 01-Prerequisites.md      # What you need before starting
│   ├── 02-Cloudflare-Setup.md   # CDN & Security layer
│   ├── 03-Supabase-Setup.md     # Database layer
│   ├── 04-Render-Setup.md       # App server layer
│   ├── 05-n8n-Setup.md          # Automation layer
│   └── 06-Full-Integration.md   # Connecting everything
└── helpers/
    ├── verify-setup.sh          # Verify everything works
    ├── verify-setup.ps1         # Windows verification
    └── troubleshoot.md          # Common problems & fixes
```

## Quick Start (TL;DR)

### For Mac/Linux:
```bash
curl -fsSL https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/setup.sh | bash
```

### For Windows (PowerShell):
```powershell
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
IEX ((New-Object System.Net.WebClient).DownloadString('https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/setup.ps1'))
```

## Step-by-Step Guide

### Step 1: Check Prerequisites (**5 minutes**)
Read [01-Prerequisites.md](./guides/01-Prerequisites.md)

You'll need:
- Git (free, download from git-scm.com)
- Node.js 18+ (free, download from nodejs.org)
- A text editor (VS Code is free)
- Free accounts on: Cloudflare, Supabase, Render

### Step 2: Setup Cloudflare (Security Layer) (**10 minutes**)
Follow [02-Cloudflare-Setup.md](./guides/02-Cloudflare-Setup.md)

What you'll get:
- ✅ DDoS protection
- ✅ SSL/TLS encryption
- ✅ Global CDN for speed
- ✅ Rate limiting for security

### Step 3: Setup Supabase (Database Layer) (**10 minutes**)
Follow [03-Supabase-Setup.md](./guides/03-Supabase-Setup.md)

What you'll get:
- ✅ PostgreSQL database
- ✅ Real-time capabilities
- ✅ Row-level security
- ✅ Automated backups

### Step 4: Setup Render (App Server) (**15 minutes**)
Follow [04-Render-Setup.md](./guides/04-Render-Setup.md)

What you'll get:
- ✅ Your app running 24/7
- ✅ Auto-scaling
- ✅ Environment variables
- ✅ Automatic deployments from GitHub

### Step 5: Setup n8n (Automation Layer) (**20 minutes**)
Follow [05-n8n-Setup.md](./guides/05-n8n-Setup.md)

What you'll get:
- ✅ Automation workflows
- ✅ Integration with your database
- ✅ Scheduled tasks
- ✅ Webhook triggers

### Step 6: Connect Everything (Full Integration) (**30 minutes**)
Follow [06-Full-Integration.md](./guides/06-Full-Integration.md)

You'll:
- ✅ Connect Cloudflare → Render
- ✅ Connect Render → Supabase
- ✅ Connect n8n → Supabase
- ✅ Test the entire flow

## Using the Automated Setup Scripts

If you prefer to skip the manual guides and want everything automated:

### Option A: Bash Script (Mac/Linux)
```bash
# 1. Clone or download this repo
git clone https://github.com/makagagahum/kodigo-ng-kawalan.git
cd kodigo-ng-kawalan/kodigo-for-dummies

# 2. Copy the example env file
cp .env.example .env

# 3. Edit .env with your API keys (see instructions in file)
nano .env

# 4. Run the setup
chmod +x setup.sh
./setup.sh
```

### Option B: PowerShell Script (Windows)
```powershell
# 1. Clone or download this repo
git clone https://github.com/makagagahum/kodigo-ng-kawalan.git
cd kodigo-ng-kawalan\kodigo-for-dummies

# 2. Copy the example env file
Copy-Item -Path '.env.example' -Destination '.env'

# 3. Edit .env with your API keys (use Notepad)
notebook .env

# 4. Run the setup
Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -Force
.\setup.ps1
```

## Verification

After running the setup scripts, verify everything works:

### Mac/Linux:
```bash
chmod +x helpers/verify-setup.sh
./helpers/verify-setup.sh
```

### Windows:
```powershell
.\helpers\verify-setup.ps1
```

You should see:
```
✓ Cloudflare domain configured
✓ Supabase database connected
✓ Render app deployed
✓ n8n workflows running
✓ All layers communicating
```

## Environment Variables Explained

When you open `.env`, you'll see fields like:

```
# Cloudflare Settings
CLOUDFLARE_ZONE_ID=xxxxxxxxxxxxxxxxxxxx
CLOUDFLARE_API_TOKEN=yyyyyyyyyyyyyyyyyyyy

# Supabase Settings
SUPABASE_URL=https://your-project.supabase.co
SUPABASE_API_KEY=zzzzzzzzzzzzzzzzzzzz

# ... and so on
```

**Where to find these values?** Each guide (02-06) tells you exactly where to copy-paste these from.

## Troubleshooting

Something not working? Check [helpers/troubleshoot.md](./helpers/troubleshoot.md)

Common issues:
- ❌ "API key not valid" → [See Fix #1](./helpers/troubleshoot.md#1-api-key-not-valid)
- ❌ "Connection timeout" → [See Fix #2](./helpers/troubleshoot.md#2-connection-timeout)
- ❌ "Database not found" → [See Fix #3](./helpers/troubleshoot.md#3-database-not-found)

## Next Steps

Once everything is running:

1. **Customize your app** - Edit files in `/src` and push to GitHub
2. **Create automations** - Build workflows in n8n
3. **Monitor performance** - Use Cloudflare analytics
4. **Scale up** - Render auto-scales when you need it

## Still Confused?

📧 **Email Marvin** at [marvin@orin.work](mailto:marvin@orin.work) with:
- What step you're stuck on
- What error you're seeing
- What you've already tried

He'll explain it in even simpler terms or help you debug.

## Learning Resources

- [Cloudflare Documentation](https://developers.cloudflare.com/)
- [Supabase Documentation](https://supabase.com/docs)
- [Render Documentation](https://render.com/docs)
- [n8n Documentation](https://docs.n8n.io/)

## Contributing

Found a typo or confusing step? Create a GitHub issue or submit a pull request.

## License

MIT - See main repository LICENSE file

---

**Ready?** Start with [01-Prerequisites.md](./guides/01-Prerequisites.md) or run the automated script above.

**Remember**: This is open source and maintained by the community. If you found it helpful, consider starring the repo! ⭐
