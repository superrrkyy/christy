<!--
  English documentation for the Christy portfolio.
  Indonesian version → README.md
-->

<div align="center">

<img src="docs/01-hero.jpg" alt="Christy portfolio hero — JKT48 New Era" width="100%" />

<br />
<br />

# CHRISTY — Portfolio

**A one-page digital portfolio for Christy (Angelina Christy), 7th-generation member of JKT48 New Era.**
One page, one poster, full of motion.

<br />

[![Live Website](https://img.shields.io/badge/🌐_LIVE_SITE-superrrkyy.github.io-1f1f1f?style=for-the-badge&labelColor=ededed)](https://superrrkyy.github.io/christy/)
[![GitHub Pages](https://img.shields.io/badge/GitHub_Pages-active-2ea44f?style=for-the-badge&logo=githubpages&logoColor=white)](https://superrrkyy.github.io/christy/)
[![No Build](https://img.shields.io/badge/build_step-none-brightgreen?style=for-the-badge)](#-run-it-locally)
[![Offline Ready](https://img.shields.io/badge/offline-ready-1f1f1f?style=for-the-badge)](#-offline-mode)
[![Language](https://img.shields.io/badge/language-EN_·_ID-5c5c5a?style=for-the-badge)](#-versi-bahasa-indonesia)

<br />

[**Live Site**](https://superrrkyy.github.io/christy/) · [About](#-about) · [Sections](#-page-sections) · [Gallery](#-gallery) · [Docs](#-folder-structure) · [Bahasa Indonesia](README.md)

</div>

<br />

> [!TIP]
> **Just want to see it?** Open **[superrrkyy.github.io/christy](https://superrrkyy.github.io/christy/)** — nothing to install.
> The site also works **without an internet connection** after one visit (see [Offline Mode](#-offline-mode)).

<br />

## Table of Contents

- [About](#-about)
- [Tech Stack](#-tech-stack)
- [Page Sections](#-page-sections)
- [Gallery](#-gallery)
- [Responsive Views](#-responsive-views)
- [Custom 404](#-custom-404)
- [Offline Mode](#-offline-mode)
- [Link Preview (Open Graph)](#-link-preview-open-graph)
- [Folder Structure](#-folder-structure)
- [Run It Locally](#-run-it-locally)
- [Deploy](#-deploy)
- [Editing Content](#-editing-content)
- [Performance & Optimization](#-performance--optimization)
- [Accessibility](#-accessibility)
- [Testing Results](#-testing-results)
- [FAQ](#-faq)
- [License & Credit](#-license--credit)
- [Versi Bahasa Indonesia](#-versi-bahasa-indonesia)

<br />

## ✦ About

This is a **single-page portfolio** for **Christy** — *Angelina Christy*, a member of **JKT48 7th generation**, known through the **JKT48 New Era** stage, media, and digital content.

The design is intentionally built like a **living magazine poster**: giant serif typography, a **cut-out photo** that follows the cursor, a scrolling marquee, a gallery that slides horizontally as you scroll, and a dark quote section that lights up word by word.

| | |
|---|---|
| **Subject** | Christy (Angelina Christy) — JKT48 New Era, 7th generation |
| **Type** | Single-page static portfolio, no backend |
| **Built by** | **[axryzure](https://github.com/superrrkyy)** |
| **Status** | ✅ Live — [superrrkyy.github.io/christy](https://superrrkyy.github.io/christy/) |
| **Content language** | Indonesian |
| **Running cost** | $0 (GitHub Pages) |

<br />

## ✦ Tech Stack

<div align="center">

| Technology | Role in this project | Logo |
|:---|:---|:---:|
| **HTML5** | Page structure, semantic elements (`<main>`, `<figure>`, `<dl>`), Open Graph metadata | <img src="https://cdn.simpleicons.org/html5/E34F26" width="26" alt="HTML5" /> |
| **CSS3** | Grid & Flexbox layout, custom properties, `clamp()` fluid typography, `aspect-ratio`, `@keyframes`, `prefers-reduced-motion` | <img src="https://cdn.simpleicons.org/css/1572B6" width="26" alt="CSS3" /> |
| **JavaScript (ES6+)** | Interaction logic: loader, scroll-spy, mobile menu, parallax | <img src="https://cdn.simpleicons.org/javascript/F7DF1E" width="26" alt="JavaScript" /> |
| **GSAP 3.12.5** | Core animation engine — intro timeline, reveals, magnetic buttons | <img src="https://cdn.simpleicons.org/greensock/88CE02" width="26" alt="GSAP" /> |
| **GSAP ScrollTrigger** | Scroll-driven animation, horizontal gallery *pinning*, progress bar | <img src="https://cdn.simpleicons.org/greensock/88CE02" width="26" alt="ScrollTrigger" /> |
| **Service Worker** | Offline mode, asset caching, `offline.html` fallback | <img src="https://cdn.simpleicons.org/pwa/5A0FC8" width="26" alt="Service Worker" /> |
| **Web App Manifest** | Installable to home screen (PWA), icons, theme color | <img src="https://cdn.simpleicons.org/pwa/5A0FC8" width="26" alt="PWA" /> |
| **GitHub Pages** | Free hosting, automatic HTTPS, deploy from `main` | <picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/github/ededed"><source media="(prefers-color-scheme: light)" srcset="https://cdn.simpleicons.org/github/181717"><img src="https://cdn.simpleicons.org/github/181717" width="26" alt="GitHub" /></picture> |
| **Git & GitHub** | Version control and collaboration | <img src="https://cdn.simpleicons.org/git/F05032" width="26" alt="Git" /> |

</div>

<br />

### Fonts (Google Fonts)

| Font | Used for | Logo |
|:---|:---|:---:|
| **Bodoni Moda** | Giant "CHRISTY" wordmark, section headings, the 404 numerals | <img src="https://cdn.simpleicons.org/googlefonts/4285F4" width="26" alt="Google Fonts" /> |
| **Alex Brush** | Script handwriting — *Angelina*, *Potret*, *mampir!* | ✒️ |
| **Allura** | Small script accents — dates, quote signature | ✒️ |
| **Young Serif** | Editorial sub-headings | ✒️ |
| **Jost** | UI text, labels, navigation, badges | ✒️ |
| **Noto Sans JP** | The Japanese name **クリスティー** | 🇯🇵 |
| **Crimson Pro** | Long-form paragraph text | ✒️ |

<br />

### Development Tooling

| Tool | What it did here |
|:---|:---|
| **Python 3** (`http.server`) | Throwaway local server for testing |
| **rembg + ONNX Runtime** | Removed the hero photo background → transparent `christy.webp` |
| **Pillow (PIL)** | Cropped, resized and compressed every photo; generated icons and the OG poster |
| **Playwright / Chromium** | Automated testing: overflow, broken images, offline mode, accessibility |
| **GitHub REST API** | Created the repo and enabled Pages automatically |

<br />

## ✦ Page Sections

Five main sections plus a footer — all on one page, linked by a scroll-aware navigation.

| # | Section | Contents | Screenshot |
|:---:|:---|:---|:---|
| **00** | **Hero** | Letter-by-letter **CHRISTY** wordmark, Japanese name クリスティー, parallax cut-out photo, date & "Site by axryzure" credit, running marquee | [view](docs/01-hero.jpg) |
| **01** | **Profile** | Portrait with vertical Japanese name, "Halo, aku *Christy!*", bio, 4 fact cards (name, born, generation, nickname), self-introduction | [view](docs/02-profil.jpg) |
| **02** | **Activities** | Three rows — *Theatre*, *Media*, *Event* — with a small photo that follows the cursor on hover | [view](docs/03-aktivitas.jpg) |
| **03** | **Quote** | Dark section, quote lights up word by word on scroll, slow-moving クリスティー backdrop | [view](docs/04-quote.jpg) |
| **04** | **Gallery** | 10 photos in a horizontally pinned track, black typography panels between them, progress bar | [view](docs/05-galeri.jpg) |
| **05** | **Contact / Footer** | Instagram, X, TikTok, JKT48 links; **Site by axryzure** badge; giant CHRISTY wordmark | [view](docs/06-footer.jpg) |

### Interaction details

<table>
<tr><td width="50%" valign="top">

**Hero**
- Loader 000→100 with 5 black panels
- CHRISTY letters rise one by one
- Photo drifts smoothly with the cursor (desktop)
- *Angelina* signature drawn via *clip-path*
- Marquee reverses direction with scroll direction

</td><td width="50%" valign="top">

**Profile & Activities**
- Profile photo revealed with a bottom-up *clip-path*
- Grayscale → color filter on enter
- Fact rules grow from the left
- Hovering a row shifts the title + rotates the arrow
- Preview photo follows the cursor

</td></tr>
<tr><td valign="top">

**Quote**
- Each word lights from 12% → 100% opacity on scroll
- クリスティー backdrop slides horizontally
- Signature unrolls like a curtain

</td><td valign="top">

**Gallery & Footer**
- Horizontal track is *pinned*; vertical scroll = horizontal motion
- Each panel enters with a subtle rotate + fade
- Progress bar under the gallery
- Social buttons appear in sequence

</td></tr>
</table>

<br />

## ✦ Gallery

Ten photos, alternating between portrait panels (4:5) and typography panels.

<div align="center">

| No. | Label | Photo |
|:---:|:---|:---|
| 01 | `Street` | Christy in glasses on a city street at night |
| 02 | `Selfie` | Close-up selfie wearing glasses |
| 03 | `Editorial` | Indoor portrait, warm light |
| 04 | `Golden Hour` | At the beach at sunset |
| 05 | `Portrait` | Expressive close-up, grey top |
| 06 | `Sport` | Basketball jersey #6 on court |
| 07 | `Night` | Black top, night city backdrop |
| 08 | `Kafe` | Wearing glasses in a stone-walled café |
| 09 | `Casual` | Green patterned sweater, casual style |
| 10 | `Cozy` | Relaxing indoors |

</div>

<br />

## ✦ Responsive Views

<table>
<tr>
<td align="center" width="50%">
<img src="docs/07-mobile.jpg" alt="Mobile view" width="100%" />
<br /><b>Mobile — 390 × 844</b><br />
<sub>Layout stacks: photo on top, Japanese text hidden, nav becomes a "MENU" button</sub>
</td>
<td align="center" width="50%">
<img src="docs/01-hero.jpg" alt="Desktop view" width="100%" />
<br /><b>Desktop — 1440 × 900</b><br />
<sub>Full poster: text left, cut-out photo center, notes right</sub>
</td>
</tr>
</table>

**Tested clean at:** 1920 · 1440 · 1280 · 1024 · 768 · 390 · 360 px — no horizontal scrolling at any width.

<br />

## ✦ Custom 404

Any unknown address (e.g. `/christy/whatever`) is served by **our own `404.html`** — not the default GitHub error page.

<img src="docs/08-404.jpg" alt="Custom 404 page" width="100%" />

- Giant **4·0·4** with a script "0"
- **Back to home** & **View gallery** buttons
- Quick links to every section
- "Christy · JKT48 New Era" circle
- **Site by axryzure** badge

<br />

## ✦ Offline Mode

The site **still opens without internet** after being visited once.

<img src="docs/09-offline.jpg" alt="Custom offline page" width="100%" />

**How it works**

1. First visit → `sw.js` (service worker) caches 21 core files on the device: pages, all 10 gallery photos, the hero image, icons, and the manifest.
2. Online → pages are fetched **network-first** (always fresh), assets are **cache-first** (fast).
3. Offline:
   - Previously visited pages → **render normally** (photos included).
   - URLs never visited → the **custom `offline.html`** appears — not Chrome's dinosaur page.
4. Back online → the page reloads itself once automatically.

> [!NOTE]
> Offline mode activates **after** the site has been opened once while online. Browsers do not allow a site to install a cache before the first visit.

<br />

## ✦ Link Preview (Open Graph)

When the link is shared on WhatsApp, X, Facebook, or Telegram, a **poster card** appears — not plain blue text.

<div align="center">
<img src="preview.jpg" alt="Link preview card" width="640" />
<br />
<sub><code>preview.jpg</code> — 1200 × 630 px, 124 KB</sub>
</div>

| Property | Value |
|:---|:---|
| `og:title` | Christy — JKT48 New Era |
| `og:description` | Portofolio Christy (Angelina Christy), member JKT48 New Era. Teater, media, dan panggung — project by axryzure. |
| `og:image` | `https://superrrkyy.github.io/christy/preview.jpg` |
| `og:url` | `https://superrrkyy.github.io/christy/` |
| `og:image:width` / `height` | 1200 / 630 |
| `twitter:card` | `summary_large_image` |

<details>
<summary><b>If the preview does not appear in WhatsApp</b> (click to expand)</summary>

<br />

This is almost always **app cache**, not the site:

1. Open **developers.facebook.com/tools/debug** → paste the URL → **Debug** → **Scrape Again** 2–3×.
2. Send the link to **someone else or a group** (not "Saved messages").
3. Use the clean URL: `https://superrrkyy.github.io/christy/` — avoid links carrying `?fbclid=...`.
4. Force-stop WhatsApp, then reopen it.
5. Still nothing? Settings → Apps → WhatsApp → **Clear cache** (never "Clear data").

</details>

<br />

## ✦ Folder Structure

```text
christy/
│
├── index.html              # Main page (HTML + CSS + JS in one file)
├── 404.html                # Custom 404 page
├── offline.html            # Shown when there is no connection
├── sw.js                   # Service worker (offline mode)
├── manifest.webmanifest    # PWA manifest (name, icons, theme color)
│
├── preview.jpg             # Link preview card, 1200×630
├── christy.webp            # Transparent hero cut-out — 148 KB
│
├── img/                    # 10 gallery & profile photos
│   ├── 01.jpg              #   profile + last gallery panel
│   ├── 02.jpg … 09.jpg
│   └── 10.jpg
│
├── assets/                 # Icons & favicons
│   ├── favicon-32.png
│   ├── apple-touch-icon.png
│   ├── icon-192.png
│   └── icon-512.png
│
├── docs/                   # Screenshots used by this README
│   ├── 01-hero.jpg … 09-offline.jpg
│
├── jalankan.sh             # One-command local server
├── deploy-github.sh        # Automated GitHub Pages deploy
├── siap-online.sh          # Rewrites og:image to an absolute URL
│
├── .nojekyll               # Tell GitHub Pages: skip Jekyll processing
└── .gitignore              # Excludes the source-photo folder
```

<br />

## ✦ Run It Locally

This site is **static** — no build step, no `npm install`. Just serve the folder.

```bash
# 1. enter the project folder
cd christy

# 2. start a server (pick one)
python3 -m http.server 8080          # Python 3
php -S localhost:8080                # PHP
npx serve -l 8080 .                  # Node.js

# 3. open in the browser
#    http://localhost:8080
```

Or use the provided script:

```bash
sh jalankan.sh          # port 8080
sh jalankan.sh 3000     # any other port
```

### On Android (Termux + Alpine / Acode terminal)

```bash
proot-distro login alpine --bind /sdcard
apk add --no-cache python3
cd /sdcard/Download/christy
python3 -m http.server 8080 --bind 0.0.0.0
```

Then open `http://localhost:8080` in Chrome.

> [!WARNING]
> Avoid opening `index.html` directly over `file://`. The page still renders, but Google Fonts and GSAP come from the internet, and the service worker will not activate (it requires `http://`).

<br />

## ✦ Deploy

The project is already live on **GitHub Pages**. To redeploy or copy it to another account:

<details>
<summary><b>A. Automated script</b> (click)</summary>

<br />

```bash
sh deploy-github.sh
```

It will: `git init` → commit everything → set the remote to `superrrkyy/christy` → push to `main`.

When asked for a password, paste a **Personal Access Token** (not the account password):
GitHub → Settings → Developer settings → Personal access tokens → Tokens (classic) → *Generate new token* → tick the **`repo`** scope.

</details>

<details>
<summary><b>B. Manual via terminal</b> (click)</summary>

<br />

```bash
git init
git add .
git commit -m "Christy site"
git branch -M main
git remote add origin https://github.com/USERNAME/christy.git
git push -u origin main
```

Then: **Settings → Pages → Source: Deploy from a branch → Branch: `main` / `(root)` → Save**.
The site goes live at `https://USERNAME.github.io/christy/` in about a minute.

</details>

<details>
<summary><b>C. No git — upload in the browser</b> (click)</summary>

<br />

1. Open the repo → **Add file → Upload files**
2. Drag the **contents** of the folder (not the wrapper folder — `index.html` must sit at the top level)
3. **Commit changes** → enable Pages as in step B

</details>

<br />

### Once you have a domain

Run this so link previews stay correct:

```bash
sh siap-online.sh https://yourdomain.com
```

<br />

## ✦ Editing Content

Everything lives in **`index.html`** (a single file). Find the text, change it, push.

| What to change | Look for in `index.html` |
|:---|:---|
| Name in the hero | `<h1 class="title"` — one `<span class="ci">` per letter |
| Japanese name | `クリスティー` (appears 6×) |
| Profile bio | `class="lead"` |
| Facts (name/born/generation/nickname) | `class="fact"` |
| Quote | `class="quote-text"` or `class="quote"` |
| Gallery photos | `<img ... src="img/NN.jpg"` + alt text |
| Social links | `class="social"` |
| Author credit | `class="credit"`, `class="site-by"`, `class="footer-copy"` |
| Colors & sizes | the `:root { --paper; --ink; --muted; }` block inside `<style>` |

After editing, bump the offline cache so visitors receive the new version:

```bash
# open sw.js and increase the number
const VERSION = 'christy-v4';   # v3 → v4
```

<br />

## ✦ Performance & Optimization

| Optimization | Detail |
|:---|:---|
| **Hero as WebP** | PNG 980 KB → **WebP 148 KB** (85% smaller) with transparency intact |
| **LCP preload** | `<link rel="preload" as="image" href="christy.webp" fetchpriority="high">` |
| **Lazy loading** | All 10 gallery photos use `loading="lazy" decoding="async"` |
| **Font strategy** | `display=swap` + `media="print" onload` → text paints first, fonts follow |
| **Non-blocking JS** | GSAP is loaded with `defer` |
| **No framework** | 0 KB of React/Vue/jQuery — only GSAP (~70 KB) |
| **Total site size** | ~ **2.6 MB** (mostly photos) |
| **No build step** | No bundler, no CI that can break |

<br />

## ✦ Accessibility

- ✅ **Skip link** — first Tab jumps straight to the content
- ✅ **Visible focus** — 2px outline on every interactive element
- ✅ **`aria-label`** on icon-only links and buttons
- ✅ **`aria-current`** follows the scroll position
- ✅ **Mobile menu** with `aria-expanded` & `aria-controls`
- ✅ **Descriptive `alt`** on every photo
- ✅ **`prefers-reduced-motion`** — animations, marquee, and transitions switch off automatically
- ✅ **No-JS mode** — the page stays fully readable, loader never blocks
- ✅ Semantic structure: `<main>`, `<section>`, `<figure>`, `<dl>`, `<footer>`

<br />

## ✦ Testing Results

Tested in Chromium across 7 viewport sizes, plus offline and no-JS modes.

| Test | Result |
|:---|:---:|
| Images loaded | **13 / 13** |
| Broken images / 404s | **0** |
| Console & page errors | **0** |
| Horizontal overflow (360–1920 px) | **none** |
| Clipped text | **0** |
| Balanced HTML tags | ✅ |
| Active animations (ScrollTrigger) | 55 |
| Offline — homepage | ✅ renders, 13/13 photos |
| Offline — unseen URL | ✅ custom `offline.html` |
| `prefers-reduced-motion` | ✅ 0 elements left permanently hidden |
| Keyboard (Tab) | ✅ skip link is the first focus stop |
| Mobile menu open/close | ✅ |
| Link preview (Meta debugger) | ✅ poster renders |

<br />

## ✦ FAQ

<details>
<summary><b>Why does the hero photo need a transparent background?</b></summary>

<br />
The hero design places the photo **on top of** the giant "CHRISTY" type (a poster effect). A photo with a background would cover the letters, so the background is removed automatically with `rembg` and saved as a transparent WebP.

</details>

<details>
<summary><b>Can it be installed like an app?</b></summary>

<br />
Yes. Open it in Chrome/Safari → menu → **"Add to Home screen"**. A `manifest.webmanifest` plus 192/512 icons are already in place, so it appears as an app with the Christy icon.

</details>

<details>
<summary><b>Why did the design not change even though the content was replaced?</b></summary>

<br />
Because every replacement touched **only text and image files** — no CSS or HTML structure was modified. Image files were also produced at the exact same dimensions as the originals so crops would not shift.

</details>

<details>
<summary><b>What data is stored?</b></summary>

<br />
None. The site is static with no backend, no cookies, no analytics, and no forms. The service worker only stores **site files** on the visitor's device so it can open offline.

</details>

<details>
<summary><b>Can new sections be added?</b></summary>

<br />
Yes. The `<section class="section">` structure is consistent, and reveal animations activate automatically for any element carrying a `data-reveal` or `data-split` attribute.

</details>

<br />

## ✦ License & Credit

```
Design & development : axryzure  (github.com/superrrkyy)
Content & subject    : Christy — Angelina Christy, JKT48 New Era
Hosting              : GitHub Pages
Fonts                : Google Fonts (SIL Open Font License)
Animation            : GSAP 3.12.5 (standard license — free for non-commercial use)
Photos               : publicly available Christy documentation
```

> [!IMPORTANT]
> This is a **fan-made portfolio** and is **not officially affiliated** with JKT48, PT Indonesia Musik Nusantara, or Christy. All rights to JKT48 names, images, and content belong to their respective owners. Please use responsibly.

<br />

<div align="center">

---

### Crafted with care by **axryzure**

[![Website](https://img.shields.io/badge/🌐_superrrkyy.github.io/christy-1f1f1f?style=for-the-badge&labelColor=ededed)](https://superrrkyy.github.io/christy/)
[![GitHub](https://img.shields.io/badge/github-superrrkyy-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/superrrkyy)

<sub>© 2026 Christy Portfolio · Designed & built by axryzure</sub>

</div>

<br />
<br />

---

## 🇮🇩 Versi Bahasa Indonesia

<sub>Dokumentasi lengkap Bahasa Indonesia → **[README.md](README.md)**</sub>

<br />

<div align="center">

# CHRISTY — Portofolio

**Portofolio digital satu halaman untuk Christy (Angelina Christy), member JKT48 New Era generasi ke-7.**
Satu halaman, satu poster, penuh gerak.

[![Live](https://img.shields.io/badge/🌐_SITUS_LIVE-superrrkyy.github.io-1f1f1f?style=for-the-badge&labelColor=ededed)](https://superrrkyy.github.io/christy/)
[![Offline](https://img.shields.io/badge/offline-siap-1f1f1f?style=for-the-badge)](#)

</div>

<br />

### ✦ Tentang

**Portofolio statis satu halaman** untuk **Christy** — *Angelina Christy*, member **JKT48 generasi ke-7**, dikenal lewat panggung **JKT48 New Era**, media, dan konten digital.

Desainnya dibangun seperti **poster majalah hidup**: tipografi serif raksasa, foto potongan (*cutout*) yang mengikuti kursor, marquee berjalan, galeri yang bergeser horizontal saat di-scroll, dan bagian quote gelap yang menyala kata demi kata.

| | |
|---|---|
| **Subjek** | Christy (Angelina Christy) — JKT48 New Era, generasi ke-7 |
| **Jenis** | Portofolio statis satu halaman, tanpa backend |
| **Dibuat oleh** | **[axryzure](https://github.com/superrrkyy)** |
| **Status** | ✅ Live — [superrrkyy.github.io/christy](https://superrrkyy.github.io/christy/) |
| **Bahasa konten** | Indonesia |
| **Biaya operasional** | Rp0 (GitHub Pages) |

<br />

### ✦ Teknologi

<div align="center">

| Teknologi | Peran dalam proyek | Logo |
|:---|:---|:---:|
| **HTML5** | Struktur halaman, elemen semantik, metadata Open Graph | <img src="https://cdn.simpleicons.org/html5/E34F26" width="26" alt="HTML5" /> |
| **CSS3** | Grid & Flexbox, custom properties, `clamp()` fluid typography, animasi, `prefers-reduced-motion` | <img src="https://cdn.simpleicons.org/css/1572B6" width="26" alt="CSS3" /> |
| **JavaScript (ES6+)** | Logika interaksi: loader, scroll-spy, menu mobile, parallax | <img src="https://cdn.simpleicons.org/javascript/F7DF1E" width="26" alt="JavaScript" /> |
| **GSAP 3.12.5** | Engine animasi utama — timeline intro, reveal, efek magnet | <img src="https://cdn.simpleicons.org/greensock/88CE02" width="26" alt="GSAP" /> |
| **GSAP ScrollTrigger** | Animasi berbasis scroll, pinning galeri, progress bar | <img src="https://cdn.simpleicons.org/greensock/88CE02" width="26" alt="ScrollTrigger" /> |
| **Service Worker** | Mode offline, cache aset, fallback `offline.html` | <img src="https://cdn.simpleicons.org/pwa/5A0FC8" width="26" alt="Service Worker" /> |
| **Web App Manifest** | Bisa dipasang ke home screen (PWA), ikon, warna tema | <img src="https://cdn.simpleicons.org/pwa/5A0FC8" width="26" alt="PWA" /> |
| **GitHub Pages** | Hosting gratis, HTTPS otomatis, deploy dari `main` | <picture><source media="(prefers-color-scheme: dark)" srcset="https://cdn.simpleicons.org/github/ededed"><source media="(prefers-color-scheme: light)" srcset="https://cdn.simpleicons.org/github/181717"><img src="https://cdn.simpleicons.org/github/181717" width="26" alt="GitHub" /></picture> |
| **Git & GitHub** | Version control + kolaborasi | <img src="https://cdn.simpleicons.org/git/F05032" width="26" alt="Git" /> |

</div>

<br />

### ✦ Bagian Halaman

<table>
<tr>
<td align="center" width="33%">
<img src="docs/01-hero.jpg" alt="Hero" width="100%" /><br />
<b>00 · Hero</b><br />
<sub>Wordmark CHRISTY, クリスティー, foto cutout parallax, marquee</sub>
</td>
<td align="center" width="33%">
<img src="docs/02-profil.jpg" alt="Profil" width="100%" /><br />
<b>01 · Profil</b><br />
<sub>Potret, bio, 4 kartu fakta, jiko</sub>
</td>
<td align="center" width="33%">
<img src="docs/03-aktivitas.jpg" alt="Aktivitas" width="100%" /><br />
<b>02 · Aktivitas</b><br />
<sub>Baris Teater, Media, Event + pratinjau mengikuti kursor</sub>
</td>
</tr>
<tr>
<td align="center">
<img src="docs/04-quote.jpg" alt="Quote" width="100%" /><br />
<b>03 · Quote</b><br />
<sub>Kata menyala mengikuti scroll</sub>
</td>
<td align="center">
<img src="docs/05-galeri.jpg" alt="Galeri" width="100%" /><br />
<b>04 · Galeri</b><br />
<sub>10 foto, scroll horizontal di-pin</sub>
</td>
<td align="center">
<img src="docs/06-footer.jpg" alt="Footer" width="100%" /><br />
<b>05 · Kontak</b><br />
<sub>Tautan sosial, badge kredit, wordmark raksasa</sub>
</td>
</tr>
</table>

<br />

### ✦ Halaman Tambahan

<table>
<tr>
<td align="center" width="50%">
<img src="docs/08-404.jpg" alt="Halaman 404" width="100%" /><br />
<b>404 kustom</b><br />
<sub>"Halaman ini tidak ada di panggung."</sub>
</td>
<td align="center" width="50%">
<img src="docs/09-offline.jpg" alt="Halaman offline" width="100%" /><br />
<b>Halaman offline</b><br />
<sub>Muncul saat jaringan putus, bukan error bawaan browser</sub>
</td>
</tr>
</table>

<br />

### ✦ Cara Kerja — Mode Offline

1. Kunjungan pertama → `sw.js` menyimpan 21 file inti ke perangkat.
2. Online → halaman diambil **network-first** (selalu terbaru); aset **cache-first** (cepat).
3. Offline → halaman yang pernah dibuka tampil normal; URL baru menampilkan **`offline.html` kustom**.
4. Sinyal kembali → halaman otomatis dimuat ulang sekali.

<br />

### ✦ Jalankan Sendiri

```bash
cd christy
python3 -m http.server 8080     # atau: php -S localhost:8080 / npx serve -l 8080 .
# buka http://localhost:8080
```

Atau langsung: `sh jalankan.sh`

<br />

### ✦ Deploy

```bash
sh deploy-github.sh        # init → commit → push ke github.com/superrrkyy/christy
```

Lalu **Settings → Pages → Deploy from a branch → `main` / `(root)` → Save**.
Situs hidup di `https://USERNAME.github.io/christy/` dalam ±1 menit.

<br />

### ✦ Pratinjau Tautan (Open Graph)

<div align="center">
<img src="preview.jpg" alt="Kartu pratinjau tautan" width="560" />
</div>

Situs menyertakan poster **1200×630** di `preview.jpg` plus set lengkap tag `og:*` dan `twitter:*` di paling atas `<head>`, sehingga tautan yang dibagikan tampil sebagai kartu kaya di WhatsApp, X, Facebook, dan Telegram.

<br />

### ✦ Ringkasan Pengujian

| Pengujian | Hasil |
|:---|:---:|
| Gambar termuat | **13 / 13** |
| Gambar rusak / 404 | **0** |
| Error console & page error | **0** |
| Geser horizontal (360–1920 px) | **tidak ada** |
| Teks terpotong | **0** |
| Offline — beranda | ✅ 13/13 foto |
| Offline — URL baru | ✅ `offline.html` kustom |
| `prefers-reduced-motion` | ✅ tidak ada elemen tersembunyi |
| Navigasi keyboard | ✅ skip link jadi fokus pertama |
| Pratinjau tautan (Meta debugger) | ✅ poster tampil |

<br />

### ✦ Aksesibilitas

Skip link · outline fokus terlihat · `aria-label` pada tautan ikon · `aria-current` scroll-spy · `aria-expanded` menu mobile · `alt` deskriptif · dukungan `prefers-reduced-motion` · tetap terbaca tanpa JavaScript.

<br />

### ✦ Lisensi & Kredit

```
Desain & pengembangan : axryzure  (github.com/superrrkyy)
Konten & subjek       : Christy — Angelina Christy, JKT48 New Era
Hosting               : GitHub Pages
Font                  : Google Fonts (SIL Open Font License)
Animasi               : GSAP 3.12.5 (standar license — gratis untuk non-komersial)
Foto                  : dokumentasi publik Christy
```

> [!IMPORTANT]
> Proyek ini adalah **portofolio penggemar (fan-made)** dan **tidak berafiliasi resmi** dengan JKT48, PT Indonesia Musik Nusantara, atau Christy. Seluruh hak atas nama, citra, dan konten JKT48 milik pemegang hak masing-masing.

<br />

<div align="center">

---

### Dibuat dengan teliti oleh **axryzure**

[![Website](https://img.shields.io/badge/🌐_superrrkyy.github.io/christy-1f1f1f?style=for-the-badge&labelColor=ededed)](https://superrrkyy.github.io/christy/)
[![GitHub](https://img.shields.io/badge/github-superrrkyy-181717?style=for-the-badge&logo=github&logoColor=white)](https://github.com/superrrkyy)

<sub>© 2026 Christy Portfolio · Designed & built by axryzure</sub>

</div>
