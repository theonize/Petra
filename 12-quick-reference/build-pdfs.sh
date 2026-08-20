#!/usr/bin/env bash
# Render the four two-page handouts to PDF.
#   bash 12-quick-reference/build-pdfs.sh [out-dir]      (default: ./pdf)
# Needs pandoc and a Chromium browser (google-chrome / chromium / chromium-browser,
# or set CHROME=/path/to/chrome). CI runs this after `mkdocs build`.
set -euo pipefail

here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
out="${1:-pdf}"
mkdir -p "$out"
out="$(cd "$out" && pwd)"

chrome="${CHROME:-}"
if [ -z "$chrome" ]; then
  for c in google-chrome google-chrome-stable chromium chromium-browser; do
    if command -v "$c" >/dev/null 2>&1; then chrome="$c"; break; fi
  done
fi
[ -n "$chrome" ] || { echo "build-pdfs: no Chromium browser found (set CHROME=...)" >&2; exit 1; }
command -v pandoc >/dev/null 2>&1 || { echo "build-pdfs: pandoc not found" >&2; exit 1; }

for f in musician-quick-reference tech-quick-reference song-selector-quick-reference pastor-overview; do
  pandoc "$here/$f.md" -f gfm -t html5 --standalone --embed-resources \
    --css "$here/handout.css" --metadata "title=$f" -o "$out/$f.html"
  html="$out/$f.html"; pdf="$out/$f.pdf"
  if command -v cygpath >/dev/null 2>&1; then html="$(cygpath -m "$html")"; pdf="$(cygpath -m "$pdf")"; fi  # Git Bash on Windows
  "$chrome" --headless=new --no-sandbox --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$pdf" "file:///$html" >/dev/null 2>&1
  rm -f "$out/$f.html"
  echo "wrote $out/$f.pdf"
done
