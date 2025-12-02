# Complete Setup Instructions for Kodigo ng Kawalan

## The FASTEST Way: One-Liner Commands

If you just want to get started RIGHT NOW, use one of these commands:

### Windows Users (PowerShell):

Copy and paste this single line into PowerShell:

```powershell
iex (Invoke-WebString 'https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/setup.ps1')
```

**That's literally it.** The script does everything automatically:
- Creates your .env file
- Opens your browser to each service
- Guides you through OAuth
- Auto-configures everything

### macOS / Linux Users (Bash):

Copy and paste this single line into Terminal:

```bash
curl -fsSL https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/auto-setup.sh | bash
```

---

## What Gets Set Up?

When you run the one-liner, it automatically configures:

1. **Cloudflare** (DNS & CDN)
   - API Token
   - Zone ID
   - Email

2. **Supabase** (Database)
   - Project URL
   - API Keys
   - Service Role Key

3. **Vercel** (Frontend Hosting)
   - API Token
   - Project ID
   - Org ID

4. **Render** (Backend Hosting)
   - API Key
   - Owner ID

5. **n8n** (Automation)
   - API Key
   - Webhook URL

---

## Manual Setup (If One-Liner Doesn't Work)

### Step 1: Download and Open Script

**Windows:**
```powershell
# Download and run setup.ps1
```

**Mac/Linux:**
```bash
# Download and run auto-setup.sh
bash auto-setup.sh
```

### Step 2: Follow the Prompts

The script will:
1. Create your `.env` file
2. Open service dashboards in your browser
3. Ask you to copy API tokens
4. Auto-populate `.env` with your credentials
5. Verify everything works

### Step 3: Complete!

Start developing:
```bash
npm install
npm run dev
```

---

## Troubleshooting

### "PowerShell can't run scripts"

Run this first:
```powershell
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
```

Then try the one-liner again.

### "curl: command not found" (Mac/Linux)

Install curl:
```bash
# On macOS with Homebrew:
brew install curl

# On Ubuntu/Debian:
sudo apt-get install curl
```

### "Browser didn't open"

Manually visit the service URLs shown in console and copy your tokens.

### ".env file is empty or incomplete"

Check that you correctly copied tokens without extra spaces.

---

## File Descriptions

- **QUICKSTART.md** - Get going in 5 minutes
- **README.md** - Full documentation
- **setup.ps1** - Windows PowerShell setup (one-liner)
- **auto-setup.sh** - Mac/Linux setup (one-liner)
- **setup.sh** - Traditional Mac/Linux setup
- **.env.example** - All environment variables explained
- **guides/** - Detailed setup guides per service

---

## Community Support

Stuck? Check:
1. README.md for full details
2. guides/ folder for service-specific help
3. GitHub Issues for common problems
4. Community Discord

**Happy building!** 🚀
