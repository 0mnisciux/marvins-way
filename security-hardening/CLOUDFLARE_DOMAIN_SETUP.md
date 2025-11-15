# 🌐 Cloudflare Domain Setup Guide for orin.work

## Complete Step-by-Step Guide: Connecting Your Custom Domain to Cloudflare

**Domain:** orin.work  
**Platform:** Cloudflare (Free Tier)  
**Connected To:** Render.com deployment  
**Setup Date:** November 2025

---

## 📋 Table of Contents

1. [Prerequisites](#prerequisites)
2. [Step 1: Add Domain to Cloudflare](#step-1-add-domain-to-cloudflare)
3. [Step 2: Update Nameservers](#step-2-update-nameservers)
4. [Step 3: Configure DNS Records](#step-3-configure-dns-records)
5. [Step 4: SSL/TLS Configuration](#step-4-ssltls-configuration)
6. [Step 5: Connect to Render](#step-5-connect-to-render)
7. [Verification](#verification)
8. [Troubleshooting](#troubleshooting)

---

## Prerequisites

✅ Domain purchased (from any registrar: Namecheap, GoDaddy, Google Domains, etc.)  
✅ Cloudflare account (free tier is sufficient)  
✅ Render.com account with deployed application  
✅ Access to your domain registrar's DNS settings

---

## Step 1: Add Domain to Cloudflare

### 1.1 Sign in to Cloudflare
1. Go to [https://dash.cloudflare.com](https://dash.cloudflare.com)
2. Log in to your account
3. Click **"Add a Site"** on the dashboard

### 1.2 Enter Your Domain
```
Domain: orin.work
```
- Click **"Add site"**
- Select **"Free"** plan
- Click **"Continue"**

### 1.3 Wait for DNS Scan
Cloudflare will scan your existing DNS records (takes ~1 minute)

---

## Step 2: Update Nameservers

### 2.1 Get Cloudflare Nameservers
After adding your site, Cloudflare will provide 2 nameservers:
```
Example:
nameserver 1: aron.ns.cloudflare.com
nameserver 2: daisy.ns.cloudflare.com
```

### 2.2 Update at Your Domain Registrar

**For Namecheap:**
1. Log in to Namecheap
2. Go to **Domain List** → Click **"Manage"** next to orin.work
3. Find **"Nameservers"** section
4. Select **"Custom DNS"**
5. Enter the 2 Cloudflare nameservers
6. Click **"Save"**

**For GoDaddy:**
1. Log in to GoDaddy
2. Go to **My Products** → **Domains**
3. Click on orin.work
4. Scroll to **Nameservers** section
5. Click **"Change"**
6. Select **"Enter my own nameservers"**
7. Enter the 2 Cloudflare nameservers
8. Click **"Save"**

**For Google Domains:**
1. Log in to Google Domains
2. Click on orin.work
3. Go to **DNS** tab
4. Click on **"Custom name servers"**
5. Enter the 2 Cloudflare nameservers
6. Click **"Save"**

### 2.3 Wait for Propagation
⏱️ **Propagation Time:** 5 minutes to 48 hours (usually within 1-2 hours)

Check status in Cloudflare dashboard - it will show "Active" when complete.

---

## Step 3: Configure DNS Records

### 3.1 Navigate to DNS Settings
1. In Cloudflare dashboard, click on **orin.work**
2. Go to **DNS** → **Records**

### 3.2 Add DNS Records for Render

**Add A Record (Root Domain):**
```
Type: A
Name: @
IPv4 address: [Your Render IP - Get from Render dashboard]
Proxy status: Proxied (Orange cloud ON)
TTL: Auto
```

**Add CNAME Record (www subdomain):**
```
Type: CNAME
Name: www
Target: orin.work
Proxy status: Proxied (Orange cloud ON)
TTL: Auto
```

**Alternative: CNAME to Render directly:**
```
Type: CNAME
Name: @
Target: your-app-name.onrender.com
Proxy status: Proxied (Orange cloud ON)
TTL: Auto
```

### 3.3 Enable Orange Cloud (Proxy)
✅ **Important:** Make sure the cloud icon is **ORANGE** (Proxied)
- Orange = Traffic goes through Cloudflare (CDN, SSL, Security)
- Gray = Direct to origin (bypasses Cloudflare features)

---

## Step 4: SSL/TLS Configuration

### 4.1 Set Encryption Mode
1. In Cloudflare, go to **SSL/TLS** → **Overview**
2. Set encryption mode to **"Full (Strict)"**
   - This ensures end-to-end encryption
   - Requires valid SSL certificate on Render (automatically provided)

### 4.2 Enable Always Use HTTPS
1. Go to **SSL/TLS** → **Edge Certificates**
2. Find **"Always Use HTTPS"**
3. Toggle it **ON**
4. This automatically redirects http://orin.work to https://orin.work

### 4.3 Enable HSTS (Recommended)
1. Scroll down to **"HTTP Strict Transport Security (HSTS)"**
2. Click **"Enable HSTS"**
3. Check **"I understand"**
4. Configure:
   - **Max Age**: 6 months (Recommended)
   - **Include subdomains**: ON
   - **No-Sniff Header**: ON
5. Click **"Save"**

---

## Step 5: Connect to Render

### 5.1 Add Custom Domain in Render
1. Log in to [Render.com](https://render.com)
2. Go to your web service
3. Click **"Settings"** tab
4. Scroll to **"Custom Domains"** section
5. Click **"Add Custom Domain"**
6. Enter: `orin.work`
7. Click **"Save"**

### 5.2 Add www Subdomain
Repeat the process for:
```
www.orin.work
```

### 5.3 Verify DNS Configuration
Render will verify that your DNS is pointing correctly.
- ✅ Green checkmark = Domain is connected
- ⏱️ Pending = Wait for DNS propagation

---

## Verification

### ✅ Check if Everything Works

**Test HTTP to HTTPS Redirect:**
```bash
curl -I http://orin.work
# Should return: HTTP/1.1 301 Moved Permanently
# Location: https://orin.work/
```

**Test SSL Certificate:**
```bash
curl -I https://orin.work
# Should return: HTTP/2 200
```

**Browser Test:**
1. Open: `http://orin.work` → Should redirect to `https://orin.work`
2. Open: `https://orin.work` → Should load with padlock icon
3. Open: `https://www.orin.work` → Should work

**DNS Propagation Check:**
Use online tools:
- [https://whatsmydns.net](https://whatsmydns.net)
- Enter: `orin.work`
- Type: `A` or `CNAME`
- Check if it resolves globally

---

## Troubleshooting

### ❌ Domain Not Loading

**Problem:** "This site can't be reached"

**Solutions:**
1. **Check DNS Propagation**
   - Use [whatsmydns.net](https://whatsmydns.net)
   - Wait up to 48 hours for full propagation

2. **Verify Nameservers**
   ```bash
   nslookup -type=NS orin.work
   ```
   Should show Cloudflare nameservers

3. **Check Cloudflare Status**
   - Go to Cloudflare dashboard
   - Domain should show "Active" status

### ❌ SSL/TLS Errors

**Problem:** "Your connection is not private" or "NET::ERR_CERT_AUTHORITY_INVALID"

**Solutions:**
1. **Check SSL/TLS Mode**
   - Go to Cloudflare → SSL/TLS
   - Must be set to "Full (Strict)"

2. **Wait for Certificate Generation**
   - Cloudflare Universal SSL takes ~15 minutes to activate
   - Check status in SSL/TLS → Edge Certificates

3. **Verify Render SSL**
   - Render automatically provides SSL
   - Check Settings → Custom Domains for SSL status

### ❌ Mixed Content Warnings

**Problem:** Some resources loading over HTTP

**Solution:**
- Ensure all assets (images, scripts, CSS) use HTTPS or relative URLs
- Update code to use `https://` or protocol-relative URLs `//`

### ❌ Infinite Redirect Loop

**Problem:** Page keeps redirecting

**Solutions:**
1. **Check Render SSL Settings**
   - Render → Settings → Custom Domains
   - Verify SSL is enabled

2. **Review SSL/TLS Mode**
   - Change to "Full" (not "Flexible") if using "Full (Strict)" causes issues

---

## Advanced: Email Configuration

### MX Records (For mail.orin.work)

**If using Cloudflare Email Routing:**
```
Type: MX
Name: @
Mail server: route1.mx.cloudflare.net (Priority: 5)
Mail server: route2.mx.cloudflare.net (Priority: 23)
Mail server: route3.mx.cloudflare.net (Priority: 67)
```

**SPF Record:**
```
Type: TXT
Name: @
Content: v=spf1 include:_spf.mx.cloudflare.com ~all
```

**DKIM Record:**
```
Type: TXT
Name: cf2024-1._domainkey
Content: [Provided by Cloudflare Email Routing]
```

**DMARC Record:**
```
Type: TXT
Name: _dmarc
Content: v=DMARC1; p=reject; rua=mailto:your-email@example.com
```

---

## Summary Checklist

- [x] Domain added to Cloudflare
- [x] Nameservers updated at registrar
- [x] DNS records configured (A/CNAME)
- [x] Orange cloud enabled (Proxied)
- [x] SSL/TLS set to "Full (Strict)"
- [x] "Always Use HTTPS" enabled
- [x] HSTS configured
- [x] Custom domain added in Render
- [x] Domain verified and active
- [x] HTTP→HTTPS redirect working
- [x] SSL certificate valid
- [x] Email records configured (if applicable)

---

## 🎉 Success!

Your domain **orin.work** is now:
- ✅ Connected to Cloudflare
- ✅ Pointing to Render deployment
- ✅ Secured with SSL/TLS
- ✅ Protected by Cloudflare's CDN and security features
- ✅ Optimized for performance

**Total Cost:** $0 (Using Cloudflare Free Tier + Render Free Tier)

---

## Additional Resources

- [Cloudflare DNS Documentation](https://developers.cloudflare.com/dns/)
- [Render Custom Domains Guide](https://render.com/docs/custom-domains)
- [SSL/TLS Best Practices](https://developers.cloudflare.com/ssl/origin-configuration/ssl-modes/)

---

**Last Updated:** November 11, 2025  
**Status:** ✅ Active and Running at https://orin.work
