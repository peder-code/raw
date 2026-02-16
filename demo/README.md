# RAW live demo prototype

Denne demoen er nå en **komplett hjemmesideskisse** i nytt design, med tekst og bildebruk hentet fra originalside der det passer best.

## Åpne direkte i nettleser

- `demo/index.html`

Alle lenker er relative, så prototypen fungerer også via `file://` uten server.

## Anbefalt lokal server (valgfritt)

```bash
cd /workspace/raw
python3 -m http.server 8000 --directory .
```

Åpne:
- http://127.0.0.1:8000/demo/index.html

## Sider
- `index.html` (hjem – komplett ny hovedside med originalt innhold i nytt uttrykk)
- `tjenester.html`
- `om.html`
- `blogg.html`
- `artikkel.html`
- `kontakt.html`

## Assets
- `assets/styles.css`
- `assets/app.js`

## Troubleshooting
Hvis du ser tekst som `<<<<<<<`, `=======` eller `>>>>>>>` i filer, er det uløste merge-konflikter.
I denne versjonen er README ryddet og konfliktmarkører fjernet.
