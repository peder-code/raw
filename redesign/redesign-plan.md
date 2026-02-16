# RAW Trening – Modernisering (WordPress)

## 1) Quick audit av dagens rawtrening.no

Basert på gjennomgang av forsiden, Personlig Trening, Klinikk, Bedrift, Om RAW, Kontakt og artikkelvisning.

### Hva som oppleves datert i dag
- **Visuell hierarki:** Mange flater konkurrerer samtidig (slider, overlays, knapper, flere typografiske stiler), så primær-CTA blir svak.
- **Typografi:** Ujevn fontbruk, mye versaler, lav leserytme i lengre tekstblokker.
- **Spacing:** Tett innhold med varierende luft mellom seksjoner gir mindre premium-følelse.
- **Komponenter:** Kort, knapper og skjema føles “standard WordPress-tema” fremfor helhetlig brand-system.
- **Bilder:** Blandet uttrykk i utsnitt/kvalitet og manglende konsistent fargebehandling.
- **Navigasjon:** Meny er innholdsrik, men informasjonsprioritering er uklar for nye besøkende.
- **Tillitselementer:** Faglig kompetanse finnes, men sosial proof/resultater/case er ikke tydelig nok i toppen av siden.
- **Konvertering:** CTA-tekst er ofte generisk; færre tydelige “neste steg” på hver side.
- **Artikkelopplevelse:** Lesbarhet og struktur i blogginnhold kan styrkes med bedre typografi + relaterte artikler.
- **A11y/UX:** Fokusstater, konsistent kontrast og skip-to-content kan forbedres.

### Top 10 høy-impact forbedringer
1. Bytt til moderne fontpar med tydelig skala (premium + klinisk trygghet).
2. Etabler fast spacing-system (8px-basert) for mer ro og konsistens.
3. Lag en tydelig hero med én primær CTA + én sekundær CTA.
4. Innfør komponentbibliotek (knapper/kort/badges/skjema) med lik radius/skygge.
5. Stram inn fargepalett: færre farger, høy kontrast, medisinsk-ren tone.
6. Flytt tillitselementer høyere: antall år erfaring, sertifiseringer, klientresultater.
7. Tydeliggjør tjenestestruktur i grid med konsekvent copy og “Les mer”.
8. Oppgrader artikkeltemplate for lesbarhet (linjelengde, heading-rytmikk, relaterte innlegg).
9. Reduser visuell støy (færre tunge effekter, subtile mikrointeraksjoner).
10. Standardiser metadata/overskriftshierarki per side for SEO + skannbarhet.

---

## 2) Design direction (kompakt style guide)

### Typografi
- **Headings:** `Manrope` (700/800)
- **Body:** `Inter` (400/500/600)
- **Skala:**
  - H1: clamp(2.1rem → 4rem), 800, LH 1.15
  - H2: clamp(1.75rem → 3rem), 800, LH 1.2
  - H3: clamp(1.4rem → 2.125rem), 700, LH 1.2
  - Body: 1rem / LH 1.65
  - Lead: 1.125rem / LH 1.6

### Spacing/layout
- 4/8-pt system (`4, 8, 12, 16, 24, 32, 48, 64, 96`).
- Containerbredde: 1120px, tekstkolonne: 760px.
- Seksjonspadding: 48–96px avhengig av viewport.

### Farger (longevity + klinisk tillit)
- **Primary:** `#0F766E` (teal)
- **Primary strong:** `#0B5A54`
- **Accent:** `#2F80ED`
- **BG:** `#F5F8FA`
- **Surface:** `#FFFFFF`
- **Text:** `#14212B`
- **Muted text:** `#51616E`
- **Border:** `#D3DEE6`

### Komponentstil
- **Knapper:** pill-shape, solid primary gradient + neutral secondary.
- **Inputs:** enkel border, tydelig fokus, høy lesbarhet.
- **Kort:** hvit surface, svak skygge, 14–20px radius.
- **Nav:** sticky translucent med subtil blur.
- **Badges:** små, runde, semantiske labels (f.eks. “Longevity”).
- **Ikoner:** enkle outline/duotone-ikoner (24px grid), konsekvent stroke.

### Bildestil
- Premium foto av ekte coaching/behandling, naturlig lys.
- Konsekvent kald/ren color grade.
- Unngå stock-look med overdrevne poser; bruk funksjonelle øyeblikk.
- Subtile gradient-overlays for lesbar tekst over bilde.

---

## 3) Ny UI-struktur per sidetype

### Hjem
1. Hero (sterk verdi + 2 CTA)
2. KPI/tillit-strip (år erfaring, klienter, fagpersoner)
3. Tjenestegrid (PT, Klinikk, Bedrift, Testing)
4. Longevity-seksjon (“tren for livet, ikke bare for sommeren”)
5. Testimonials/resultater
6. Team teaser + sertifiseringer
7. Lead capture (book kartlegging)
8. Footer med kontakt/sosiale

**CTA-forslag (NO):**
- Primær: **“Book kartleggingssamtale”**
- Sekundær: **“Se våre tjenester”**

### Services (PT/klinikk/online/longevity)
- Hero med tydelig målgruppe + effekt
- Hva du får (3–6 punkter)
- Hvordan prosessen fungerer (1-2-3)
- Resultater / kundeuttalelser
- Priser/pakker (hvis relevant)
- FAQ
- Sticky CTA

### Om oss
- Founder/lead med tydelig “hvorfor”
- Teamkort med kompetanse
- Verdier + metode
- Sertifiseringer/medlemskap
- CTA til kontakt

### Blogg/artikler
- Listing: tydelige kort med kategori, dato, lesetid
- Søke-/filtermodul (lightweight)
- Single article:
  - tydelig ingress
  - luftig typografi
  - “Relaterte artikler”
  - delelenker
  - CTA-boks i bunn

### Kontakt/booking
- Kort hero + trygghetscopy
- Kontaktkort (adresse, telefon, e-post, åpningstider)
- Konverteringsvennlig skjema (få felt)
- Kart og transport-info
- “Hva skjer etter innsending?”

---

## 4) Implementasjonsplan (WordPress)

### Theme-tilnærming
- Mest realistisk: eksisterende side kjører klassisk WP-tema (ser ut som Enfold).
- **Anbefaling:**
  1. Start med child theme for rask gevinst og lav risiko.
  2. Fase 2: migrer til lett custom block theme for langsiktig fleksibilitet.

### Plugins (minimal stack)
- SEO: Rank Math eller Yoast (én av dem).
- Cache/perf: WP Rocket *eller* LiteSpeed Cache (avhenger av hosting).
- Forms: Fluent Forms eller Gravity Forms.
- Image opt: ShortPixel/Imagify (hvis ikke løst i cache-plugin).

### Struktur
- `style.css` (tokens + base)
- `assets/css/components.css` (nav, hero, cards, forms, article)
- `assets/css/utilities.css` (layout helpers)
- `functions.php` enqueue av fonts/css med preload og korrekt versjonering
- Templatefiler:
  - `front-page.php`
  - `page-services.php` (eller reuse via blocks)
  - `single.php` (prose + related posts)
  - `page-contact.php`

### SEO-sikker migrering
- Behold URL-struktur.
- Ikke fjern eksisterende indekserte sider.
- Sørg for én H1 per side, logisk H2/H3.
- Oppdater title/meta descriptions sidevis.
- Implementer schema (Organization, LocalBusiness, Article).

---

## 5) Produksjonsklar front-end layer

Se:
- `redesign/wp-modern.css`
- `redesign/wordpress-snippets.html`

### Hvor koden legges i WordPress
- CSS: Legg innholdet fra `wp-modern.css` i child theme `style.css` eller `assets/css/main.css` + enqueue i `functions.php`.
- HTML-seksjoner: bruk som utgangspunkt i `front-page.php`, `single.php` og relevante page templates eller som Gutenberg block patterns.
- Skip-link bør inn i `header.php` rett etter `<body>`.

---

## 6) Innholdsforbedringer (korte, punchy – norsk)

### Hero copy-forslag
- **Headline:** “Bygg en sterk kropp for livet.”
- **Subheadline:** “Personlig trening, behandling og tett oppfølging – samlet i ett team.”
- **Primær CTA:** “Book kartleggingssamtale”
- **Sekundær CTA:** “Se våre tjenester”

### 3 value props
1. **Tverrfaglig team:** PT + behandlere + testing i samme løp.
2. **Resultater som varer:** Fra smertereduksjon til bedre prestasjon i hverdagen.
3. **Skreddersydd oppfølging:** Plan, progresjon og justering etter din hverdag.

### Tillitselementer som bør inn høyt på siden
- Sertifiseringer (placeholder): AFPT, Active Education, Osteopat D.O.
- Erfaring: “10+ år med coaching og behandling”
- Resultater: “500+ gjennomførte forløp”
- Pressemaler/omtaler: logo-rad med “As seen in…” (hvis tilgjengelig)

