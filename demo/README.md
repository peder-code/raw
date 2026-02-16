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


Hvis PR-en viser konflikter i GitHub, gjør dette lokalt:

```bash
git fetch origin
git merge origin/main
# løs konflikter i demo/README.md, demo/assets/styles.css og demo/index.html
git add demo/README.md demo/assets/styles.css demo/index.html
git commit
git push
```

Eller bruk hjelpeskriptet:

```bash
./demo/resolve-conflicts.sh
```

Dette scriptet beholder nåværende branch-versjon av demo-filene ("ours") for konfliktfilene i demoen.
