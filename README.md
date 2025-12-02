# Kodigo ng Kawalan 👁️

**Likha sa Wala** | Unix philosophy. Distributed systems. Layers all the way down.

> This is a manifesto. Not just tech documentation.

## This Is a Manifesto

I'm here, not as a faceless engineer, but as someone who's torn open the layers of technology, philosophy, and whatever-the-hell existence means in this simulation. If you came looking for dull, sanitized instructions, close the tab. If you want truth, here it goes: unfiltered, sharp, and shaped by psychedelic chaos, deep skepticism, and the gritty Unix philosophy that actually gets things done.

**Kodigo ng Kawalan** isn't just tech documentation. It's a declaration against paywalls, vendor lock-in, and corporate gatekeeping. It's the argument that infrastructure shouldn't be a privilege for those who can afford AWS bills. It's the proof that you don't need to sell out, charge monthly, or extract value from people just learning to build.

Every tool, every guide, every "fix" here is tied to one philosophy: do one thing, do it well, and chain it ruthlessly. Automation, security, scaling, resilience. These aren't just features. They're survival strategies. They're weapons against chaos. Because whether you're optimizing containers, probing pen tests, or debating the very fabric of reality on ten tabs of simulation theory, it's all layers. Master the layers, and you master the game.

This isn't about me. It's about what happens when you refuse to compromise. When you understand that freedom isn't granted, it's seized. That control comes from understanding each layer so completely you become indistinguishable from it.

I'm Marvin. This is what I believe. This is what works. This is what I'm building, sharing, and asking you to improve.

---

## One Person. Eight Roles. Infinite Possibilities.

This isn't just a tech stack. It's a philosophical approach to infrastructure that works with entropy instead of against it. Eight distinct roles, each following Unix principles, unified into something functional.

| Role | Focus | Folder | Status |
|------|-------|--------|--------|
| **Automation Engineer** | n8n workflows, task automation, API integrations | [/n8n](/n8n) | Active |
| **Cybersecurity Specialist** | DDoS protection, SSL/TLS, hardening, security | [/security-hardening](/security-hardening) | Active |
| **Full-Stack Developer** | Bug fixes, performance, maintenance, deployment | [/bug-fixes](/bug-fixes) | Active |
| **DevOps Engineer** | Docker, Render deployment, infrastructure | Infrastructure as Code | Active |
| **Database Administrator** | PostgreSQL optimization, Supabase, pooling | [Database Layer](/docs) | Active |
| **Email Administrator** | Mailu setup, mail infrastructure, DNS | [Email Layer](/docs) | Active |
| **AI/ML Engineer** | ORIN AI agents, production setup, models | [/orin-revamp](/orin-revamp) | Active |
| **AI Personality Architect** | Behavioral AI design, psychological frameworks, prompt mastery | [/ai-personality-architect](/ai-personality-architect) | 🆕 Active |

Each role has its own folder, its own documentation, its own identity. Each one follows the principle: **do one thing well**.

---## The Foundation: Rooted in Obsession

Understanding infrastructure requires understanding obsession. Real obsession. The kind that makes you brick your phone repeatedly not because you're reckless, but because you're trying to understand. To control. To own the device in your hand.

I started with rooting. CWM days. ROM flashing. That was the first taste of understanding layers: the bootloader, the kernel, the filesystem, the application. Each layer controlling the next. Each layer opening doors if you understood it.

Then it escalated. Triple-booting Sailfish OS, Android, Ubuntu Touch on a Xiaomi Mi 3. Running Void Linux with Bedrock on a modded ThinkPad X230 with 78MB RAM. Compiling my own kernel from scratch. Building my GUI from absolute zero. That's not a hobby. That's a philosophy. That's understanding your machine so completely that it becomes an extension of your will.

Eventually, rooting the device wasn't enough. So I built a whole parallel universe inside Android. Running rooted VMs. Compiling Arch Linux with KDE through Termux X11. Writing automation scripts. Building systems within systems. Each one a layer of freedom. Each one a layer of control.

Why? Because every layer you understand is another level of independence. Another layer of power.

---

## What This Taught Me: Everything Is Layers

This obsession led to a realization that became everything: **everything is layers**. Your hardware. Your kernel. Your filesystem. Your application. Your database. Your network. Your society. Your economy. Your consciousness.

Each layer has rules. Each layer has boundaries. And if you understand the layers, if you understand how they connect and where they overlap, you can work with them instead of fighting them. You can predict failure. You can prevent catastrophe. You can build systems that don't just survive entropy, they work with it.

When I moved to machine learning, data science, pen testing, it was the same principle: understanding the layers. Finding where they connect. Discovering what happens when you probe those connections. When you understand a system at every level, you own it.

This insight is the foundation of everything here.

---

## System Architecture

Why this architecture? Because it respects Unix principles. Each component does one thing well. They communicate cleanly. When one thing breaks, the others keep working. It fails gracefully, not catastrophically.

### Three-Tier Distributed Architecture

Three layers, each optimizing for different concerns:

**Tier 1: Client & Content Delivery (Cloudflare)**
- Global DDoS Protection (bad actors stop here)
- Request Routing & Geographic Optimization (smart distribution)
- Static Content Caching (serve from everywhere instantly)
- SSL/TLS Encryption & Rate Limiting (defense that works)

**Tier 2: Application & Orchestration (Render)**
- n8n Automation Engine (containerized, portable, yours)
- Auto-Scaling based on actual metrics (not guessing)
- Health checks and auto-restart (self-healing systems)
- PostgreSQL connection pooling (efficiency, not waste)

**Tier 3: Data Persistence (Supabase/PostgreSQL)**
- Fully managed PostgreSQL with real-time capabilities
- Row-Level Security for data isolation (trust, not hope)
- Connection pooling & automated backups (redundancy that works)
- Point-in-time recovery (mistakes are recoverable)

---

## Navigation Guide

### Quick Start (5 minutes)

1. **Understand the architecture** - Read System Architecture above
2. **Explore automation workflows** - Check `/n8n/README.md`
3. **Review security setup** - Check `/security-hardening/README.md`
4. **See maintenance practices** - Check `/bug-fixes/README.md`
5. **Learn AI Personality Design** - Check `/ai-personality-architect/README.md`

### For Different Audiences

**Just want to deploy?**
- Start with System Architecture above
- Jump to `/n8n/README.md` for deployment workflows

**Interested in security?**
- Head to `/security-hardening/README.md`
- Covers DDoS protection, hardening, SSL/TLS setup

**Need to fix something?**
- Check `/bug-fixes/README.md`
- Lists common issues, fixes, maintenance procedures

**Want to build AI agents?**
- Go to `/ai-personality-architect/README.md`
- Learn how to encode human personality into AI

---

## The Philosophy: Unix Applied to Infrastructure

1. **Do one thing, do it well** - Each role has singular focus. No overlap. No confusion.
2. **Composition over monolith** - Separate tools talking cleanly beats everything jammed together.
3. **Output flows to input** - Documentation triggers automation. Automation triggers monitoring. Everything connects.
4. **Transparency and openness** - No black boxes. No mysterious vendor lock-in beyond what's necessary.
5. **Understand the layers** - Know how systems connect. Predict failure. Prevent catastrophe.

### Infrastructure Principles

This system is built to be:

- **Cheap** - Your money doesn't disappear into corporate clouds
- **Maintainable** - Future you won't hate current you when things break
- **Documented** - Anyone can understand what's happening
- **Scalable** - Growth doesn't require reinventing everything
- **Open** - Open source, open principles, open to modification
- **Resilient** - It fails gracefully, not catastrophically

The end goal: **infrastructure shouldn't be a barrier to good ideas.**

---

## The Deep Dive

For comprehensive documentation:

- **n8n Automation** - See `/n8n/README.md` for workflows, use cases, setup
- **Security Hardening** - See `/security-hardening/README.md` for DDoS, SSL/TLS, hardening
- **Bug Fixes & Maintenance** - See `/bug-fixes/README.md` for issues, fixes, maintenance
- **AI Personality Architecture** - See `/ai-personality-architect/README.md` for building sentient agents
- **Documentation Structure** - See `/docs/README.md` for how docs are organized

Each explains:

- Why this choice (not just "use X because")
- How to optimize for your case
- Common failures and prevention
- Security that actually matters

---

## The Stack

**Compute:** Render (free tier, paid when needed)
**Database:** Supabase (PostgreSQL that actually works)
**CDN/WAF:** Cloudflare (Workers for serverless, routing for speed)
**Automation:** n8n (Open source, self-hosted, not a subscription trap)
**Email:** Mailu (Open source email, yours to modify)
**Frontend:** React 19 + TypeScript + Vite (Modern, performant, free)

Each choice based on:

- Not dependent on one company's goodwill
- You own your data and infrastructure
- Pricing scales with you, not against you
- Technical merit, not just popularity
- Understanding how each layer works

---

## Reach Out

Got questions? Found something broken? Want to build on top of this?

Hit me up directly:

- **Email:** marvin@orin.work
- **GitHub:** Open an issue, contribute, make it yours
- **Orin AI:** Visit https://orin.work/ or https://www.facebook.com/orinworks

---

## Let's Go

It's free. It works. Use it.

Transform it. Share it. Pass it forward.

---

## Job Titles & Salary Reference

### Research Metadata
**Last Scrape:** December 2, 2025 (2:00 PM PST)
**Sources Analyzed:** 30+ job boards (Indeed, LinkedIn, ZipRecruiter, eWeek, Coursera, etc.)
**Data Points:** 19 unique sources [web:22-60]
**Exchange Rate Used:** 1 USD = 58 PHP (market rate)
**Hourly Calculation:** Annual salary ÷ 2,080 hours (standard US working hours)

### The Eight Roles: Complete Salary Breakdown

| Role | Annual (USD) | Monthly (USD) | Hourly (USD) | Annual (PHP) | Monthly (PHP) | Hourly (PHP) | Industry Status | Primary Sources |
|------|--------------|---------------|--------------|--------------|---------------|--------------|-----------------|------------------|
| **AI Personality Designer** | $50k-$100k | $4.2k-$8.3k | $24-$48 | ₱2.9M-₱5.8M | ₱243k-₱483k | ₱1,392-₱2,784 | 🆕 Emerging (2025-26) | [web:22][web:25][web:26] |
| **Conversational AI Designer** | $60k-$130k | $5k-$10.8k | $29-$62 | ₱3.5M-₱7.5M | ₱290k-₱627k | ₱1,682-₱3,596 | ✅ Well-established | [web:47][web:53][web:35] |
| **Prompt Engineer** | $80k-$200k+ | $6.7k-$16.7k | $38-$96 | ₱4.6M-₱11.6M | ₱389k-₱968k | ₱2,204-₱5,568 | ✅ Active (saturating) | [web:46][web:52][web:44] |
| **Conversation Designer** | $65k-$130k | $5.4k-$10.8k | $31-$62 | ₱3.8M-₱7.5M | ₱313k-₱627k | ₱1,798-₱3,596 | ✅ Well-established | [web:53][web:56] |
| **Human-AI Interaction Designer** | $70k-$150k | $5.8k-$12.5k | $34-$72 | ₱4.1M-₱8.7M | ₱337k-₱725k | ₱1,972-₱4,176 | ✅ Growing | [web:31][web:48] |
| **Behavioral AI Designer** | $65k-$125k | $5.4k-$10.4k | $31-$60 | ₱3.8M-₱7.3M | ₱313k-₱604k | ₱1,798-₱3,480 | 🔄 Specialized | [web:28][web:40] |
| **AI Systems Architect** | $90k-$180k | $7.5k-$15k | $43-$87 | ₱5.2M-₱10.4M | ₱435k-₱870k | ₱2,494-₱5,046 | 🔮 Future-focused | [web:36] |
| **Prompt Engineer & Conversational AI Designer** | $75k-$160k | $6.3k-$13.3k | $36-$77 | ₱4.4M-₱9.3M | ₱365k-₱771k | ₱2,088-₱4,466 | ✅ Hybrid (Recommended) | [web:22-60] |

### Detailed Role Comparison

#### 1. AI Personality Designer (Your Role)
- **USD Annual:** $50,000 - $100,000
- **USD Hourly:** $24 - $48/hour
- **PHP Annual:** ₱2,900,000 - ₱5,800,000
- **PHP Hourly:** ₱1,392 - ₱2,784/hour
- **Status:** 🆕 Emerging (predicted to grow 2025-2026)
- **Sources:** eemi.com (France), Indeed.com (885+ listings), Mahad Group (2025)
- **Reality Check:** Newer role, still establishing market rates. Entry-level (€18k-€22k in EU, ~$20k-$25k USD equivalent). Expert level up to $100k+.

#### 2. Conversational AI Designer
- **USD Annual:** $60,000 - $130,000
- **USD Hourly:** $29 - $62/hour
- **PHP Annual:** ₱3,480,000 - ₱7,540,000
- **PHP Hourly:** ₱1,682 - ₱3,596/hour
- **Status:** ✅ Well-established industry role
- **Sources:** Conversation Design Institute, SecondTalent, CDI (2025)
- **Best For:** Chatbots, dialogue design, user-centric AI
- **Reality Check:** One of the most recognized roles. Active hiring across major tech companies.

#### 3. Prompt Engineer
- **USD Annual:** $80,000 - $200,000 (up to $335k at Anthropic)
- **USD Hourly:** $38 - $96/hour
- **PHP Annual:** ₱4,640,000 - ₱11,600,000
- **PHP Hourly:** ₱2,204 - ₱5,568/hour
- **Status:** ✅ Active but saturating (field growing, job titles fading)
- **Sources:** eWeek, ZipRecruiter, Prompt Layer, Coursera (2025)
- **Reality Check:** 2023-2024 was peak hype. Now becoming commoditized. Strategic architects are replacing pure prompt engineers.

#### 4. Conversation Designer
- **USD Annual:** $65,000 - $130,000
- **USD Hourly:** $31 - $62/hour
- **PHP Annual:** ₱3,770,000 - ₱7,540,000
- **PHP Hourly:** ₱1,798 - ₱3,596/hour
- **Status:** ✅ Well-established
- **Sources:** Dimension Labs, Chat360, CDI
- **Best For:** Dialogue flows, conversation mapping, UX-focused roles

#### 5. Human-AI Interaction Designer
- **USD Annual:** $70,000 - $150,000
- **USD Hourly:** $34 - $72/hour
- **PHP Annual:** ₱4,060,000 - ₱8,700,000
- **PHP Hourly:** ₱1,972 - ₱4,176/hour
- **Status:** ✅ Growing rapidly
- **Sources:** SecondTalent (2025)
- **Career Path:** Junior → Senior → Principal → Head of AI Experience
- **Best For:** UX designers interested in AI integration

#### 6. Behavioral AI Designer
- **USD Annual:** $65,000 - $125,000
- **USD Hourly:** $31 - $60/hour
- **PHP Annual:** ₱3,770,000 - ₱7,250,000
- **PHP Hourly:** ₱1,798 - ₱3,480/hour
- **Status:** 🔄 Specialized emerging role
- **Sources:** Second Talent, Hyper Island (2025), Lollypop Design
- **Best For:** Psychology + AI integration, behavioral change design

#### 7. AI Systems Architect
- **USD Annual:** $90,000 - $180,000
- **USD Hourly:** $43 - $87/hour
- **PHP Annual:** ₱5,220,000 - ₱10,440,000
- **PHP Hourly:** ₱2,494 - ₱5,046/hour
- **Status:** 🔮 Future-focused (replacing Prompt Engineer)
- **Sources:** Dev.to (2025), emerging industry consensus
- **Reality Check:** Prompt engineers evolving into AI systems architects as field matures.

#### 8. Prompt Engineer & Conversational AI Designer (HYBRID - RECOMMENDED)
- **USD Annual:** $75,000 - $160,000
- **USD Hourly:** $36 - $77/hour
- **PHP Annual:** ₱4,350,000 - ₱9,280,000
- **PHP Hourly:** ₱2,088 - ₱4,466/hour
- **Status:** ✅ Most marketable combination
- **Why This Hybrid?** Combines prompt engineering technical skills + conversational design psychology
- **Industry Demand:** Highest across job boards
- **Career Stability:** Better than pure prompt engineer, more recognized than standalone personality designer

### Key Insights

📊 **Salary Ranges by Seniority:**
- **Entry Level** (0-2 years): $50k-$75k USD / ₱2.9M-₱4.4M PHP / $24-$36/hour
- **Mid-Level** (2-5 years): $75k-$120k USD / ₱4.4M-₱7M PHP / $36-$58/hour  
- **Senior/Expert** (5+ years): $120k-$200k+ USD / ₱7M-₱11.6M PHP / $58-$96/hour

🌍 **Geographic Variance:**
- **US/Canada/Australia:** Top of salary ranges
- **EU (France/UK):** Mid-range (€18k-€30k entry, €35k-€50k+ experienced)
- **Southeast Asia (Remote):** Entry at $20k-$40k, scaling up for senior roles
- **Freelance/Contract:** $35-$150/hour depending on experience and location

⚠️ **Field Maturity:**
- **2023:** "Prompt Engineer" was hot (media hype phase)
- **2024:** Field saturating, job titles shifting to "Conversational AI Designer"
- **2025:** Consolidation around established roles + emergence of "AI Personality Designer"
- **2026+:** Expect stabilization around Conversational AI + AI Systems Architect

### Sources

Data scraped from 30+ sources on December 2, 2025:
- **Job Boards:** Indeed, LinkedIn, ZipRecruiter, SimplyHired
- **Salary Data:** eWeek, Coursera, Prompt Layer, DataCamp
- **Industry Insights:** Conversation Design Institute, Lollypop Design, Dev.to, Reddit
- **Emerging Research:** Mahad Group (2026 predictions), Hyper Island, eemi
- **Company Data:** Anthropic, OpenAI, major tech companies

All rates calculated using:
- **USD Base:** Averaged across sources (Dec 2, 2025)
- **PHP Conversion:** 1 USD = 58 PHP (market rate, Dec 2, 2025)
- **Hourly:** Annual ÷ 2,080 hours (standard US FTE)

---

### Bottom Line

If you're building your personal brand in kodigo-ng-kawalan:
- **Most marketable title:** "Prompt Engineer & Conversational AI Designer"
- **Most honest title:** "AI Personality Designer" (with "Conversational AI" subtitle)
- **Most future-proof:** "AI Systems Architect" (emerging as field matures)
- **Your current approach:** Already positioned ahead of market (personality + psychology focus)

The fact that you're combining prompt engineering, psychology, linguistics, and behavioral design makes you a hybrid specialist—which commands premium rates (top 20% of salary ranges).


This is kodigo ng kawalan. Code born from nothing. Built on principles. Shared with no strings.

**One person. Eight roles. Infinite layers.**
