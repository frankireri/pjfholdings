# PJF Holdings LTD — Website Rebuild & Extraction

A modern, fast, responsive static website extraction and rebuild for **PJF Holdings LTD** (`pjfholdings.co.ke`), optimized for local development and zero-configuration deployment to **Vercel**.

---

## 📁 Project Structure

```
pjfholdings/
├── preview/                                # Production-ready static website
│   ├── index.html                          # Homepage (Modern Hero, Solutions, Advisory, Guides)
│   ├── irrigation-solar-solutions/index.html # Smart Irrigation & Solar Pumps
│   ├── agricultural-machinery/index.html   # Farm Machinery & Power Tillers
│   ├── agricultural-consultancy/index.html # Agricultural Advisory & Farm Planning
│   ├── contact-us/index.html               # Contact & Interactive Quote Request Form
│   ├── privacy-policy/index.html           # Kenya Data Protection Act 2019 Privacy Policy
│   ├── terms-of-service/index.html         # Terms of Service
│   ├── 404.html                            # Custom Branded 404 Error Page
│   ├── vercel.json                         # Vercel deployment configuration
│   └── assets/
│       └── images/                         # 100% locally saved images & SVG logos
│           ├── pjf-logo.svg                # High-res primary SVG brand logo
│           ├── pjf-logo-white.svg          # Dark-theme footer SVG brand logo
│           └── [all 14 original photos]    # Downloaded webp/jpg images
├── extracted/                              # Raw extraction data from live site
│   ├── raw_pages/                          # Original Olitt HTML captures
│   ├── assets/images/                      # Original raw asset downloads
│   └── site_content.json                   # Structured JSON data extracted from live site
├── scripts/
│   ├── audit_site.py                       # Automated link, asset, and HTML integrity checker
│   ├── create_legal_pages.py               # Generator for legal pages
│   └── update_footer_links.py              # Cross-page footer link updater
├── package.json                            # NPM helper scripts
├── start-local.bat                         # Windows 1-click batch launcher
├── start-local.ps1                         # PowerShell launcher
├── pjfholdings-vercel.zip                  # Ready-to-deploy zip bundle for Vercel
└── README.md
```

---

## 🚀 How to Run Locally

You can run this project locally right now using any of the following methods:

### Method 1: Double-Click Launcher (Windows)
Double-click `start-local.bat` in this folder. It will start the server and automatically open `http://localhost:3000` in your browser.

### Method 2: Command Line (Python)
Run in PowerShell / Command Prompt:
```bash
python -m http.server 3000 --directory preview
```
Then visit: [http://localhost:3000](http://localhost:3000)

### Method 3: Node / NPM
```bash
npm run dev
# or
npx serve preview
```

---

## 🛠️ Integrity Verification & Audit

Run the built-in scanner at any time:
```bash
npm run audit
# or
python scripts/audit_site.py
```

Audit checks performed:
- ✅ **0 Broken Internal Links**: Clean URL folder structure (`/contact-us/`, `/agricultural-machinery/`, etc.)
- ✅ **0 Missing Images**: All 14 original live photos + 2 brand SVG logos + 2 texture patterns saved locally
- ✅ **Clean URLs**: Tested with zero `.html` extensions required
- ✅ **Mobile Responsive**: Verified Tailwind CSS breakpoints and mobile slide-out navigation
- ✅ **Direct WhatsApp & Phone Links**: Configured to `+254 717 020 362`

---

## ☁️ How to Deploy to Vercel

### Option A: Using Vercel CLI
```bash
npx vercel preview --prod
```

### Option B: Drag and Drop / Git Repository
1. Push the contents of the `preview/` folder to a GitHub/GitLab repository.
2. In the Vercel Dashboard, click **New Project** and select the repository.
3. Framework Preset: **Other** / Root Directory: `./` (or `preview`).
4. Click **Deploy**. Vercel will automatically read `vercel.json` for clean URLs and caching.

---

## 🔍 Site Analysis: What Was Missing on the Original Site

1. **Brand Identity / Logo**:
   - The live site used Olitt's default placeholder SVG logo (`logo-secondary.svg@webp`).
   - We created custom vector SVG logos (`pjf-logo.svg` and `pjf-logo-white.svg`) featuring a solar-leaf emblem and bold typography.
2. **Missing Legal Pages**:
   - The original site linked to `#` for Privacy Policy, Terms of Service, and Cookie Policy.
   - We added complete `privacy-policy/` and `terms-of-service/` pages aligned with Kenya's Data Protection Act 2019.
3. **Form Processing**:
   - The original site submitted forms to an Olitt Mautic backend (`marketing.olitt.net`).
   - The rebuild includes interactive forms equipped with honeypot spam protection, Formspree integration, and an instant WhatsApp fallback button (`+254 717 020 362`).
4. **Missing Content & Recommendations for Client**:
   - **Dedicated About Us Page**: Currently company story is scattered; a separate page highlighting team, founding in Kwale/Shimba Hills, and mission is recommended.
   - **Project Gallery / Case Studies**: Real photos of installed drip kits, solar borehole pumps, and customer farms in Kwale.
   - **Equipment Specs / Catalog**: Downloadable PDF spec sheets for CEON and Spada tillers and sprayers.
   - **Google Analytics / Tag Manager**: Add client tracking ID when ready.
