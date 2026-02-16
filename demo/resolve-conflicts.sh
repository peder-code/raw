#!/usr/bin/env bash
set -euo pipefail

# Usage:
#   Run during an active merge/rebase conflict where demo files are unmerged.
#   This keeps the current branch's redesigned demo version for known conflict files.

FILES=(
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

if ! git rev-parse -q --verify MERGE_HEAD >/dev/null 2>&1 && \
   ! git rev-parse -q --verify REBASE_HEAD >/dev/null 2>&1; then
  echo "No merge/rebase conflict state detected."
  echo "If you still see conflicts in GitHub UI, run this script after pulling and starting merge locally."
  exit 0
fi

echo "Resolving demo conflicts by keeping current branch versions (ours)..."
for f in "${FILES[@]}"; do
  if git ls-files -u -- "$f" | grep -q .; then
    git checkout --ours -- "$f"
    git add "$f"
    echo "  resolved: $f"
  fi
done

echo "Done. Remaining unmerged files (if any):"
git diff --name-only --diff-filter=U || true
