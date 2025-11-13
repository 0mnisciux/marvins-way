#!/bin/bash
set -e

echo "🚀 ORIN AI - One-Command Deploy Script"
echo "======================================"

# Check if git is installed
if ! command -v git &> /dev/null; then
    echo "❌ Git not found. Please install Git first."
    exit 1
fi

# Clone or update repo
if [ ! -d "orin-ai-production" ]; then
    echo "📥 Cloning repository..."
    git clone https://github.com/0mnisciux/orin-ai-production.git
fi

cd orin-ai-production

echo "📦 Pulling latest changes..."
git pull origin main

echo "✅ Setup complete!"
echo ""
echo "Next steps:"
echo "1. Edit index.html in your editor"
echo "2. Commit: git add index.html && git commit -m 'Update site'"
echo "3. Push: git push origin main"
echo ""
echo "Your changes will auto-deploy to orin.work within 1-2 minutes!"
echo ""
echo "Website: https://orin.work"
echo "Repository: https://github.com/0mnisciux/orin-ai-production"
