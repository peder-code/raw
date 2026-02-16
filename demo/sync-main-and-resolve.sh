#!/usr/bin/env bash
set -euo pipefail

# Sync branch with origin/main, auto-resolve known demo conflicts, and commit.
# Intended to unblock GitHub "Squash and merge" when demo files conflict.

MAIN_REF="${MAIN_REF:-origin/main}"

KNOWN_DEMO_CONFLICTS=(
  demo/README.md
  demo/index.html
  demo/tjenester.html
  demo/om.html
  demo/blogg.html
  demo/artikkel.html
  demo/kontakt.html
  demo/assets/app.js
  demo/assets/styles.css
)

if ! git rev-parse --git-dir >/dev/null 2>&1; then
  echo "Not a git repository." >&2
  exit 1
fi

if [[ -n "$(git status --porcelain)" ]]; then
  echo "Working tree is not clean. Commit/stash changes first." >&2
  exit 1
fi

echo "Fetching latest refs..."
git fetch origin

if ! git rev-parse -q --verify "$MAIN_REF" >/dev/null 2>&1; then
  echo "Main ref '$MAIN_REF' not found. Set MAIN_REF=<ref> and retry." >&2
  exit 1
fi

echo "Merging $MAIN_REF into current branch..."
if git merge --no-edit "$MAIN_REF"; then
  echo "Merge completed without conflicts."
  exit 0
fi

echo "Merge has conflicts. Attempting auto-resolve for known demo files (keep ours)..."
for f in "${KNOWN_DEMO_CONFLICTS[@]}"; do
  if git ls-files -u -- "$f" | grep -q .; then
    git checkout --ours -- "$f"
    git add "$f"
    echo "  resolved: $f"
  fi
done

remaining="$(git diff --name-only --diff-filter=U || true)"
if [[ -n "$remaining" ]]; then
  echo "Still unresolved conflicts:" >&2
  echo "$remaining" >&2
  echo "Resolve remaining files manually, then commit." >&2
  exit 2
fi

git commit -m "Merge origin/main and auto-resolve demo conflicts"
echo "Done. Push branch to update PR:"
echo "  git push"
