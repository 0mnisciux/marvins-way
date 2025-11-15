# 🚀 Marvin's Way

**Applying Unix philosophy and distributed systems thinking to infrastructure that scales.**

---

## 📝 One Person. Seven Roles. Infinite Possibilities.

This isn't just a stack. It's a philosophical approach to building infrastructure that works *with* entropy, not against it. Seven distinct responsibilities, each following its own Unix principle, unified into something that actually works.

Instead of pretending one person is a "full-stack everything", here's what's actually happening:

| Role | Focus | Folder | Status |
|------|-------|--------|--------|
| 🤖 **Automation Engineer** | n8n workflows, task automation, API integrations | [/n8n](/n8n) | 🟢 Active |
| 🔒 **Cybersecurity Specialist** | DDoS protection, SSL/TLS, hardening, security configs | [/security-hardening](/security-hardening) | 🟢 Active |
| 💻 **Full-Stack Developer/Webmaster** | Bug fixes, performance, maintenance, deployment | [/bug-fixes](/bug-fixes) | 🟢 Active |
| 🐳 **DevOps Engineer** | Docker, Render deployment, infrastructure scaling | [/devops](/devops) | 🟢 Active |
| 🗄️ **Database Administrator** | PostgreSQL optimization, Supabase, connection pooling | [/database](/database) | 🟢 Active |
| 📧 **Email Administrator** | Mailu setup, mail.orin.work, email infrastructure | [/email](/email) | 🟢 Active |
| 🤖 **AI/ML Engineer** | ORIN AI agents, production setup, model optimization | [/ai-ml](/ai-ml) | 🟢 Active |

Each role has its own folder, its own docs, its own purpose. That's the point.

---

## 🗺️ Navigation Guide

### Quick Start (5 minutes)

1. **Understand the architecture** → Read the [System Architecture](#system-architecture) section below
2. **Explore automation workflows** → Check [`/n8n/README.md`](./n8n/README.md)
3. **Review security setup** → Check [`/security-hardening/README.md`](./security-hardening/README.md)
4. **See maintenance practices** → Check [`/bug-fixes/README.md`](./bug-fixes/README.md)

### For Different Audiences

**Just want to deploy?**
- Start with [System Architecture](#system-architecture)
- Jump to [`/n8n/README.md`](./n8n) for deployment workflows

**Interested in security?**
- Head to [`/security-hardening/README.md`](./security-hardening/README.md)
- Covers DDoS protection, hardening guides, and SSL/TLS setup

**Need to fix something?**
- Check [`/bug-fixes/README.md`](./bug-fixes/README.md)
- Lists common issues, fix areas, and maintenance procedures

**Want the full story?**
- Continue reading below for the philosophy and deep dive

---

## 🏗️ System Architecture

This section provides a technical overview of how the infrastructure components interact to create a production-ready hosting environment.

### Three-Tier Distributed Architecture

The system is built on a three-tier architecture:

**Tier 1: Client & Content Delivery (Cloudflare)**
- Global DDoS Protection
- Request Routing & Geographic Optimization
- Static Content Caching
- SSL/TLS Encryption & Rate Limiting

**Tier 2: Application & Orchestration (Render)**
- n8n Automation Engine (containerized)
- Auto-Scaling based on metrics
- Health checks and auto-restart
- PostgreSQL connection pooling

**Tier 3: Data Persistence (Supabase/PostgreSQL)**
- Fully managed PostgreSQL with real-time capabilities
- Row-Level Security for data isolation
- Connection pooling & automated backups
- Point-in-time recovery

```
┌──────────────────────────┐
│ USER REQUESTS │
│ (Via Your Custom Domain) │
└────────────┬─────────────┘
 │
 ▼
┌──────────────────────────────────────┐
│ TIER 1: CLOUDFLARE EDGE NETWORK │
│ • Global DDoS Protection │
│ • SSL/TLS Encryption │
│ • Rate Limiting & Caching │
└────────────┬─────────────────────────┘
 │
 ▼
┌──────────────────────────────────────┐
│ TIER 2: RENDER (Application Layer) │
│ • n8n Automation Engine │
│ • Auto-Scaling & Load Balancing │
│ • Health Checks & Auto-Restart │
│ • PostgreSQL Connection Pooling │
└────────────┬─────────────────────────┘
 │
 ▼
┌──────────────────────────────────────┐
│ TIER 3: SUPABASE (Data Persistence) │
│ • PostgreSQL with Real-time APIs │
│ • Row-Level Security │
│ • Automated Backups & Recovery │
│ • Connection Pooling │
└──────────────────────────────────────┘
```

---

## 🎯 The Philosophy

### Why Build This Way?

**Unix Philosophy Applied to Web Hosting**

1. **Do one thing, do it well** - Each role has a clear focus. No overlap, no confusion.
2. **Composition over combination** - Separate tools talking to each other beats a monolithic everything.
3. **Expect the output of every role to become the input of another** - Documentation flows, automation triggers, data propagates.
4. **Transparency and openness** - No black boxes, no vendor lock-in more than necessary.

I built this because I remember being broke, wanting to deploy something real without AWS charging me $1,400/month for auto-scaling I don't need. I remember forums full of people asking "Can I do this on free?"

### The Why Behind the How

I've been on psychedelics. I was an atheist, I was skeptical of everything. I understand Unix deeply because it *works* - it's not optimized for convincing investors, it's optimized for solving problems. There's something enlightened about that.

I feel like I'm on 8 dimensions, on a simulation. When you think about it that way, the goal isn't to extract maximum value and disappear. It's to leave things better than you found them.

So this infrastructure is built to be:
- **Cheap** - Your money doesn't disappear into corporate cloud bills
- **Maintainable** - Future you won't hate current you
- **Documented** - Anyone can understand what's happening
- **Scalable** - When you grow, it grows with you
- **Open** - Open source, open principles, open to modification

The philanthropic end goal: infrastructure shouldn't be a barrier to good ideas.

---

## 📚 The Deep Dive

For comprehensive documentation on each specialization:

- **n8n Automation**: See [`/n8n/README.md`](./n8n/README.md) for workflows, use cases, and setup
- **Security Hardening**: See [`/security-hardening/README.md`](./security-hardening/README.md) for DDoS protection, SSL/TLS, and hardening guides
- **Bug Fixes & Maintenance**: See [`/bug-fixes/README.md`](./bug-fixes/README.md) for common issues, fix areas, and maintenance tasks

Each section explains:
- Why this choice (not just "use X because")
- How to optimize for your use case
- Common patches and how to avoid them
- Security considerations that actually matter

---

## 📦 The Stack

**Compute:** Render (free tier + paid for serious stuff)
**Database:** Supabase (PostgreSQL that doesn't suck)
**CDN/WAF:** Cloudflare (Workers for serverless, routing for speed)
**Automation:** n8n (Open source, self-hosted, not a subscription trap)
**Email:** Mailu (Open source email infrastructure, yours to modify)

Each choice based on:
- Not being dependent on one company's goodwill
- Actually owning your data and infrastructure
- Reasonable pricing that scales with you
- Actual technical merit (not just "popular")

---

## 🔗 Let's Connect

- **GitHub:** [@0mnisciux](https://github.com/0mnisciux)
- **Issues/Questions:** Open a GitHub issue. I actually respond.
- **Improvements:** PRs welcome. This is open source for a reason.

---

*Built with the belief that good infrastructure is both possible and necessary. Run it yourself. Modify it. Make it yours.*
