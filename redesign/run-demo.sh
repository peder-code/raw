#!/usr/bin/env bash
set -euo pipefail

ROOT_DIR="$(cd "$(dirname "$0")/.." && pwd)"
PORT="${PORT:-8000}"
URL="http://127.0.0.1:${PORT}/redesign/demo.html"

echo "Starting RAW redesign demo server..."
echo "Root: ${ROOT_DIR}"
echo "Preview: ${URL}"
echo "Press Ctrl+C to stop."

python3 -m http.server "${PORT}" --directory "${ROOT_DIR}"
