#!/bin/bash

# ============================================================================
# Kodigo ng Kawalan - Universal Setup Script (Mac/Linux)
# ============================================================================
# This script helps you set up everything needed for Kodigo ng Kawalan
# It guides you through each layer step-by-step
# ============================================================================

set -e

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ============================================================================
# FUNCTIONS
# ============================================================================

print_header() {
    echo -e "\n${BLUE}========================================${NC}"
    echo -e "${BLUE}$1${NC}"
    echo -e "${BLUE}========================================${NC}\n"
}

print_success() {
    echo -e "${GREEN}✓ $1${NC}"
}

print_error() {
    echo -e "${RED}✗ $1${NC}"
}

print_warning() {
    echo -e "${YELLOW}⚠ $1${NC}"
}

print_info() {
    echo -e "${BLUE}ℹ $1${NC}"
}

# Check if command exists
command_exists() {
    command -v "$1" >/dev/null 2>&1
}

# Verify prerequisites
verify_prerequisites() {
    print_header "STEP 1: Checking Prerequisites"
    
    local missing=0
    
    # Check Git
    if command_exists git; then
        print_success "Git is installed"
    else
        print_error "Git not found. Install from: https://git-scm.com/"
        missing=1
    fi
    
    # Check Node.js
    if command_exists node; then
        node_version=$(node -v)
        print_success "Node.js is installed ($node_version)"
    else
        print_error "Node.js not found. Install from: https://nodejs.org/"
        missing=1
    fi
    
    # Check curl
    if command_exists curl; then
        print_success "curl is installed"
    else
        print_warning "curl not found (optional)"
    fi
    
    if [ $missing -eq 1 ]; then
        print_error "Please install missing prerequisites and try again."
        exit 1
    fi
    
    print_success "All prerequisites met!"
}

# Check environment file
check_env_file() {
    print_header "STEP 2: Checking Environment File"
    
    if [ -f ".env" ]; then
        print_success ".env file found"
    elif [ -f ".env.example" ]; then
        print_warning ".env file not found, but .env.example exists"
        echo -e "\nCopying .env.example to .env..."
        cp .env.example .env
        print_success ".env created from .env.example"
        echo -e "\n${YELLOW}IMPORTANT: Edit .env with your API keys:${NC}"
        echo -e "  nano .env  (or use your favorite editor)"
        echo -e "\nGet your API keys from:"
        echo -e "  • Cloudflare: https://dash.cloudflare.com/profile/api-tokens"
        echo -e "  • Supabase: https://app.supabase.com/projects"
        echo -e "  • Render: https://dashboard.render.com"
        echo -e "  • n8n: (if self-hosted)"
    else
        print_error ".env and .env.example not found!"
        exit 1
    fi
}

# Validate environment variables
validate_env_vars() {
    print_header "STEP 3: Validating Environment Variables"
    
    # Source the .env file
    if [ -f ".env" ]; then
        # shellcheck disable=SC1091
        set -a
        source .env
        set +a
        
        local missing_vars=0
        
        # Check Cloudflare variables
        if [ -z "$CLOUDFLARE_ZONE_ID" ]; then
            print_warning "CLOUDFLARE_ZONE_ID not set"
            missing_vars=1
        else
            print_success "CLOUDFLARE_ZONE_ID is set"
        fi
        
        # Check Supabase variables
        if [ -z "$SUPABASE_URL" ]; then
            print_warning "SUPABASE_URL not set"
            missing_vars=1
        else
            print_success "SUPABASE_URL is set"
        fi
        
        # Check Render variables
        if [ -z "$RENDER_API_KEY" ]; then
            print_warning "RENDER_API_KEY not set"
            # Not critical, Render is optional
        else
            print_success "RENDER_API_KEY is set"
        fi
        
        if [ $missing_vars -eq 1 ]; then
            print_warning "Some environment variables are missing."
            echo -e "\n${YELLOW}Edit .env with your API keys:${NC}"
            echo "  nano .env"
        fi
    fi
}

# Perform health checks
health_check() {
    print_header "STEP 4: System Health Check"
    
    # Check disk space
    available_space=$(df . | awk 'NR==2 {print $4}')
    if [ "$available_space" -gt 1000000 ]; then
        print_success "Sufficient disk space available"
    else
        print_warning "Low disk space (<500MB available)"
    fi
    
    # Check internet connection
    if command_exists curl; then
        if curl -s https://www.cloudflare.com --connect-timeout 2 >/dev/null; then
            print_success "Internet connection is working"
        else
            print_error "No internet connection or Cloudflare is unreachable"
        fi
    fi
}

# Show next steps
show_next_steps() {
    print_header "Setup Summary"
    
    echo "✓ All checks complete!"
    echo ""
    echo "${GREEN}Next Steps:${NC}"
    echo "  1. Edit your .env file with API keys"
    echo "     $ nano .env"
    echo ""
    echo "  2. Read the setup guides"
    echo "     $ cat README.md"
    echo ""
    echo "  3. Follow the guides in order:"
    echo "     • guides/01-Prerequisites.md"
    echo "     • guides/02-Cloudflare-Setup.md"
    echo "     • guides/03-Supabase-Setup.md"
    echo "     • guides/04-Render-Setup.md"
    echo "     • guides/05-n8n-Setup.md"
    echo "     • guides/06-Full-Integration.md"
    echo ""
    echo "${BLUE}Need help?${NC}"
    echo "  Email: marvin@orin.work"
    echo "  GitHub: https://github.com/makagagahum/kodigo-ng-kawalan"
    echo ""
}

# ============================================================================
# MAIN EXECUTION
# ============================================================================

main() {
    clear
    echo -e "${GREEN}"
    echo "╔════════════════════════════════════════════════════════════╗"
    echo "║        Kodigo ng Kawalan - Setup Script                    ║"
    echo "║   Build your infrastructure. Own your systems. No vendor   ║"
    echo "║              lock-in. Just layers and obsession.           ║"
    echo "╚════════════════════════════════════════════════════════════╝"
    echo -e "${NC}"
    
    verify_prerequisites
    check_env_file
    validate_env_vars
    health_check
    show_next_steps
}

# Run main
main

exit 0
