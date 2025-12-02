# 🐟 Termux Setup - Run LIKHA on Android Terminal

**Run cloud infrastructure setup scripts directly from Termux on your Android device!**

---

## 🚀 Quick Start (Copy & Paste)

### One-Liner Setup

```bash
curl -fsSL https://raw.githubusercontent.com/makagagahum/kodigo-ng-kawalan/main/kodigo-for-dummies/auto-setup.sh | bash
```

**That's it!** The script will:
- Detect Termux environment
- Install required dependencies
- Download LIKHA setup scripts
- Guide you through cloud platform authentication
- Create `.env` configuration file

---

## 🏗️ Step-by-Step Installation

### Step 1: Install Termux

Download from:
- **Google Play Store**: [Termux](https://play.google.com/store/apps/details?id=com.termux)
- **F-Droid** (Alternative): [F-Droid Termux](https://f-droid.org/en/packages/com.termux/)

### Step 2: Open Termux & Update

```bash
# Update package lists
pkg update

# Upgrade packages
pkg upgrade
```

Press `y` when prompted to confirm.

### Step 3: Install Dependencies

```bash
# Install essential tools
pkg install -y curl git nano vim openssl
```

### Step 4: Clone LIKHA

```bash
# Clone the repository
git clone https://github.com/makagagahum/kodigo-ng-kawalan.git

# Navigate to directory
cd kodigo-ng-kawalan/kodigo-for-dummies
```

### Step 5: Run Setup Script

```bash
# Make script executable
chmod +x auto-setup.sh

# Run the setup
./auto-setup.sh
```

---

## 🤖 What Happens Next

Once you run the setup script in Termux:

1. **🌐 Vercel Setup**
   - Script opens Vercel in your default browser
   - You authenticate and copy API token
   - Paste token back in Termux
   - 💾 Configuration saved

2. **🛠️ Render Setup**
   - Browser opens Render dashboard
   - Copy API key
   - Paste in Termux
   - 💾 Configuration saved

3. **💽 Supabase Setup**
   - Browser opens Supabase
   - Copy Project URL & Anon Key
   - Paste in Termux
   - 💾 Configuration saved

4. **🌐 Cloudflare Setup**
   - Browser opens Cloudflare
   - Copy email & API token
   - Paste in Termux
   - 💾 Configuration saved

5. **🤚 n8n Setup**
   - Browser opens n8n
   - Copy Webhook URL
   - Paste in Termux
   - 💾 Configuration saved

6. **✅ Complete!**
   - `.env` file created with all credentials
   - Ready to deploy apps to cloud
   - All platforms auto-configured

---

## 📱 Terminal UI Example

```
🚀 LIKHA - Cloud Infrastructure Setup
📱 Likha sa Wala Edition

⏳ Initializing cloud setup...

🌐 Connecting to cloud platforms...
🔗 Opening Vercel authentication...
💾 Enter Vercel API Token: [paste here]
🔗 Opening Render authentication...
💾 Enter Render API Key: [paste here]
...
✅ Setup complete!
💾 Configuration saved to .env

🎉 Your cloud infrastructure is ready!
```

---

## 📋 Useful Termux Commands

### File Management

```bash
# List files
ls -la

# Create directory
mkdir my-project

# Navigate directories
cd my-project

# View file contents
cat .env

# Edit file
nano .env

# Copy file
cp .env .env.backup

# Remove file
rm old-file
```

### Git Operations

```bash
# Check git status
git status

# Add changes
git add .

# Commit changes
git commit -m "Update config"

# Push to GitHub
git push origin main

# Pull updates
git pull origin main
```

### Package Management

```bash
# Search package
pkg search curl

# Install package
pkg install curl

# List installed packages
pkg list-installed

# Remove package
pkg uninstall curl
```

---

## 🔐 Storage & Permissions

### Grant Storage Access

Termux needs permission to access device storage:

```bash
# Request storage permission
termux-setup-storage
```

This creates:
- `~/storage/downloads/` - Downloads folder
- `~/storage/pictures/` - Pictures
- `~/storage/documents/` - Documents

### Backup Your .env

```bash
# Copy to downloads (safer location)
cp ~/.env ~/storage/downloads/.env.backup

# Or secure backup
cp ~/.env ~/storage/downloads/.env.$(date +%Y%m%d).backup
```

---

## 🚀 Advanced: Auto-Run on Startup

Create a Termux boot script to run LIKHA automatically:

### Step 1: Create Boot Directory

```bash
mkdir -p ~/.termux/boot
```

### Step 2: Create Boot Script

```bash
cat > ~/.termux/boot/likha-setup << 'EOF'
#!/data/data/com.termux/files/usr/bin/bash

# Auto-start LIKHA cloud setup
echo "[🚀] LIKHA starting..."

# Navigate to project
cd $HOME/kodigo-ng-kawalan/kodigo-for-dummies

# Run setup
bash auto-setup.sh
EOF
```

### Step 3: Make Executable

```bash
chmod +x ~/.termux/boot/likha-setup
```

Now, whenever Termux starts, it will auto-run the LIKHA setup!

---

## 🐛 Troubleshooting

### " curl: command not found"

```bash
# Install curl
pkg install curl
```

### "Permission denied"

```bash
# Make script executable
chmod +x auto-setup.sh
```

### "bash: ./auto-setup.sh: /bin/bash: bad interpreter"

```bash
# Run with bash explicitly
bash auto-setup.sh
```

### "Cannot access GitHub"

- Check internet connection: `ping 8.8.8.8`
- Check if behind VPN/proxy
- Try alternative: `git clone https://github.com/makagagahum/kodigo-ng-kawalan.git`

### "Storage permission issues"

```bash
# Grant storage access
termux-setup-storage

# Then check if it works
ls ~/storage/downloads/
```

### "Browsers won't open"

```bash
# Install Termux:Open (companion app)
# Available on Google Play

# Or manually open browser:
# Go to Settings > Apps > Browser
# Copy URL and paste in browser manually
```

---

## 📊 Directory Structure

```
~/kodigo-ng-kawalan/
├── kodigo-for-dummies/
├─ ─ auto-setup.sh          # Main setup script
├── setup.ps1             # PowerShell version
├── .env                  # Generated config
├── .env.example          # Example template
├── README.md             # Documentation
└── QUICKSTART.md         # Quick guide

~/.env                          # Your credentials (KEEP SAFE!)
```

---

## 🔐 Security Tips

⚠️ **NEVER SHARE YOUR `.env` FILE**

It contains sensitive API tokens:

```bash
# View contents safely
cat ~/.env

# Hide file from others
chmod 600 ~/.env

# Encrypt important data (optional)
openssl enc -aes-256-cbc -in .env -out .env.enc
```

### Setting File Permissions

```bash
# Only you can read/write
chmod 600 ~/.env

# View current permissions
ls -l ~/.env
```

---

## 📲 Using Termux:Open

For better browser experience, install Termux companion apps:

1. **Termux:Open** - Open URLs in browsers
2. **Termux:API** - Access Android APIs
3. **Termux:Styling** - Customize theme

Search in Google Play Store and install.

---

## 👤 Author

**Marvin S. Villanueva**  
📧 marvin@orin.work  
🌐 marvin.orin.work  
🐙 github.com/makagagahum

---

## 🌟 Termux Resources

- **Official Wiki**: https://wiki.termux.com/
- **Packages List**: https://packages.termux.dev/apt/termux/
- **GitHub**: https://github.com/termux
- **Discord Community**: https://discord.gg/HXpF69B7mh

---

**Made with 💙 for the community**  
*Likha sa Wala - Creation from Nothing*
