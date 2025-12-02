# Kodigo for Dummies - 5 Minute Quick Start

## Fastest Way to Setup Everything

Choose your operating system:

### Windows PowerShell (COPY-PASTE ONE LINE):

```powershell
iex (Invoke-WebString 'https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/setup.ps1')
```

That's it! The script will:
- Create .env file automatically
- Open all service dashboards in your browser
- Guide you through OAuth setup for each service
- Auto-populate your credentials
- Verify everything is configured

### macOS / Linux (COPY-PASTE ONE LINE):

```bash
curl -fsSL https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/auto-setup.sh | bash
```

## What Happens Next?

1. Your browser opens automatically to:
   - Cloudflare dashboard
   - Supabase console
   - Vercel settings
   - Render account settings
   - n8n configuration

2. Copy your API tokens from each dashboard
3. Paste them into the script prompts
4. Script auto-updates your .env file
5. Setup verification runs automatically
6. Done!

## Manual Setup (If One-Liner Doesn't Work)

If you prefer manual setup or the one-liner has issues:

1. **Windows**: Run setup.ps1 with PowerShell
2. **Mac/Linux**: Run setup.sh in your terminal
3. Follow the prompts
4. All services will open in your browser

## Services Configured

✓ **Cloudflare** - DNS & CDN
✓ **Supabase** - Database & Auth
✓ **Vercel** - Frontend Hosting
✓ **Render** - Backend Hosting  
✓ **n8n** - Workflow Automation

## Need Help?

Check these files:
- `README.md` - Full documentation
- `guides/` folder - Step-by-step guides for each service
- `.env.example` - All variables explained

## Troubleshooting

**Script not running?**
- Windows: Open PowerShell as Administrator
- Mac/Linux: Check if curl is installed (`curl --version`)

**OAuth not opening browser?**
- Manually visit the links shown in console
- Copy-paste tokens when prompted

**Variables not updating?**
- Check your .env file
- Ensure it's in the same directory as the script
- Verify token format (no spaces, special chars)

## What's Next?

Once setup is complete:

```bash
npm install      # Install dependencies
npm run dev      # Start development server
```

Then visit: `http://localhost:3000`

Enjoy building with Kodigo ng Kawalan! 🚀
