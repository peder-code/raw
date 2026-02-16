# 1) Audit

## Hva føles datert på rawtrening.no
- Utydelig visuelt hierarki i toppseksjoner gjør at primær CTA ikke skiller seg tydelig nok ut.
- Mye versaler og varierende typografi reduserer lesbarhet og premium-følelse.
- Ujevn spacing mellom seksjoner og komponenter skaper et mindre rolig uttrykk.
- Navigasjon og innholdskort har svak konsistens i komponentstil.
- Tillitselementer (kompetanse, resultater, erfaring) kommer for sent i brukerreisen.
- Blogg/artikkelmal mangler tydelig nok leserytme og “neste steg”-konvertering.

## Top 10 høy-impact forbedringer
1. Definer én tydelig hero med hovedbudskap + 2 CTA.
2. Innfør design tokens for hele UI-systemet.
3. Bytt til moderne fontpar med tydelig skala.
4. Etabler konsistent spacing-system (8px-prinsipp).
5. Redesign knapper/kort/skjema med samme radius, skygge og interaksjon.
6. Flytt sosial proof/tillit høyt på forsiden.
7. Gjør tjenestesidene mer skannbare (moduler, bullets, tydelig prosess).
8. Forbedre artikkel-lesbarhet (linjelengde, avsnitt, underoverskrifter).
9. Forsterk kontakt/booking med enklere skjema og trygghetscopy.
10. Løft tilgjengelighet: skip link, fokusstater, kontrast, reduced-motion.

---

# 2) Style guide (tokens)

## Farger
- Primær: `#0F766E`
- Primær mørk: `#0B5A54`
- Sekundær: `#2F80ED`
- Bakgrunn: `#F4F8FA`
- Flate: `#FFFFFF`
- Tekst: `#12202B`
- Muted: `#4F606D`
- Border: `#D2DDE6`

## Typografi
- Overskrift: **Manrope** (700/800)
- Brødtekst: **Inter** (400/500/600/700)
- H1: `clamp(2.2rem, 5vw, 3.9rem)`
- H2: `clamp(1.8rem, 4vw, 2.8rem)`
- Brødtekst: `1rem`, line-height `1.65`

## Spacing / layout
- 4/8-basert rytme: `4, 8, 12, 16, 24, 32, 48, 64, 96`
- Maksbredde: `1120px`
- Smal tekstbredde: `760px`

## Komponentregler
- **Buttons:** pill-shape, tydelig primary gradient, rolig secondary.
- **Cards:** hvit bakgrunn, subtil skygge, avrunding 14–20 px.
- **Forms:** tydelig label, enkel border, klare fokusstater.
- **Header/Nav:** sticky med translucent bakgrunn.
- **Badges:** små semantiske labels med høy kontrast.

## Imagery direction
- Premium, ekte trenings- og behandlingssituasjoner.
- Naturlig lys, rene toner, minimal “stock”-følelse.
- Subtil gradient/overlay for lesbar tekst.

---

# 3) IA + page sections (bevarer eksisterende struktur)

## Home
- Hero
- KPI/tillitsrad
- Tjenesteoversikt
- Før/Etter showcase
- Testimonials
- CTA-band

## Tjenester
- Intro hero
- Tjenestekort (PT, Behandling, Longevity, Bedrift)
- CTA for booking

## Om
- Verdier og metode
- Faglig trygghet
- Teamkort

## Blogg
- Artikkelliste med kategori/lesetid
- Klikkbar kortstruktur

## Artikkel
- Tydelig tittel + metadata
- Lesbar prosa
- Innholdsseksjoner med underoverskrifter
- Inline CTA

## Kontakt/booking
- Kontaktinfo
- Kort konverteringsskjema
- Tydelig forventning om responstid

## Norske CTA-forslag
- Primær: **Book en uforpliktende samtale**
- Sekundær: **Se tjenester**
- Alternativ: **Start i dag**

---

# 4) WordPress handoff plan

## Anbefalt tilnærming
1. Start i child theme (raskest, lavest risiko).
2. Flytt senere til block theme hvis ønskelig for bedre redigeringsflyt.

## Mapping
- `demo/assets/styles.css` → child theme `assets/css/main.css`
- `demo/assets/app.js` → child theme `assets/js/app.js`
- `demo/*.html` → map til templates:
  - `index.html` → `front-page.php`
  - `tjenester.html` → `page-tjenester.php`
  - `om.html` → `page-om.php`
  - `blogg.html` → `home.php` / archive template
  - `artikkel.html` → `single.php`
  - `kontakt.html` → `page-kontakt.php`

## Minimal plugins (kun ved behov)
- Forms: Fluent Forms
- Cache/performance: LiteSpeed Cache eller WP Rocket
- SEO: Rank Math eller Yoast (kun én)

## SEO- og migreringshensyn
- Behold eksisterende URL-er.
- Sikre én H1 per side.
- Oppdater meta descriptions per sidetype.
- Behold interne lenker og kategoristruktur.
