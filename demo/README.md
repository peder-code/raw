# RAW live demo prototype

Denne demoen er en **komplett hjemmesideskisse** i nytt design, med tekst og bildebruk hentet fra originalside der det passer best.

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

## Troubleshooting (GitHub konflikt på PR)

Hvis GitHub viser konfliktfiler (f.eks. `demo/index.html`, `demo/assets/styles.css`, osv.),
kan du løse alt lokalt med én kommando:

```bash
./demo/sync-main-and-resolve.sh
```

Skriptet gjør dette:
1. henter `origin/main`
2. merger inn i din branch
3. auto-løser kjente demo-konflikter ved å beholde branch-versjonen (`ours`)
4. committer merge-resultatet

Til slutt:

```bash
git push
```

Da oppdateres PR-en, og `Squash and merge` blir normalt tilgjengelig igjen når konfliktene er borte.

### Manuelt alternativ

```bash
git fetch origin
git merge origin/main
./demo/resolve-conflicts.sh
git commit
git push
```

Hvis du ser tekst som `<<<<<<<`, `=======` eller `>>>>>>>` i filer, er det uløste merge-konflikter.
