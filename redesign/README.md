# RAW redesign demo guide

This folder contains a lightweight front-end layer and HTML snippets for a WordPress redesign.

## Quickest demo (2 minutes)

From repo root:

```bash
cd /workspace/raw
python3 -m http.server 8000 --directory .
```

Then open:

- `http://127.0.0.1:8000/redesign/demo.html`

This renders the local preview using `redesign/wp-modern.css`.

---

## One-command demo script

You can also use:

```bash
./redesign/run-demo.sh
```

It starts a local static server on port `8000` and prints the preview URL.

---

## What each file is for

- `wp-modern.css` → production CSS layer (tokens + components)
- `wordpress-snippets.html` → copy/paste snippets for WP templates/block patterns
- `demo.html` → static preview page
- `redesign-plan.md` → audit, style guide, IA-preserving layout and implementation plan

---

## Demo inside WordPress (staging)

1. Create/activate a child theme.
2. Copy `redesign/wp-modern.css` into child theme (e.g. `assets/css/main.css`).
3. Enqueue it from `functions.php`.
4. Insert sections from `redesign/wordpress-snippets.html` into:
   - `front-page.php` (hero/services/testimonials/cta)
   - `header.php` (skip link)
   - `single.php` (article/prose block)
5. Keep existing page URLs and content structure for SEO continuity.

Minimal enqueue example:

```php
add_action('wp_enqueue_scripts', function () {
    wp_enqueue_style(
        'raw-modern',
        get_stylesheet_directory_uri() . '/assets/css/main.css',
        [],
        filemtime(get_stylesheet_directory() . '/assets/css/main.css')
    );
}, 20);
```

---

## Quick QA checklist

- Hero loads and CTA buttons are visible
- Keyboard tab shows clear focus outline
- Skip link works (`Tab` at top of page)
- Mobile view (<760px) hides desktop nav list
- Reduced motion works when OS setting is enabled

