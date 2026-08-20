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

site_url="${SITE_URL:-https://theonize.github.io/petra/}"

for f in musician-quick-reference tech-quick-reference song-selector-quick-reference pastor-overview; do
  # QR to the handout's live page (needs `pip install segno`); floated beside the H1 by handout.css.
  # Also leaves $f.qr.svg / $f.qr.png in the output dir for sharing.
  url="${site_url}12-quick-reference/$f/"
  python - "$url" "$out/$f.qr.html" "$out/$f.qr.svg" "$out/$f.qr.png" "$here/../assets/petra-logo.png" <<'PY'
import sys, base64, segno
url, html, svg, png, logo = sys.argv[1:6]
q = segno.make(url, error="m")
host = url.split("//", 1)[-1].split("/", 1)[0]
logo_b64 = base64.b64encode(open(logo, "rb").read()).decode()
with open(html, "w", encoding="utf-8") as fh:
    fh.write('<div class="handout-qr">' + q.svg_inline(scale=3, border=4, omitsize=True) + f"<div>{host}</div></div>\n")
    fh.write(f'<img class="handout-logo" src="data:image/png;base64,{logo_b64}" alt="">\n')
q.save(svg, scale=3, border=4)
q.save(png, scale=8, border=4)
PY
  pandoc "$here/$f.md" -f gfm -t html5 --standalone --embed-resources \
    --css "$here/handout.css" --metadata "title=$f" \
    --include-before-body "$out/$f.qr.html" -o "$out/$f.html"
  rm -f "$out/$f.qr.html"
  html="$out/$f.html"; pdf="$out/$f.pdf"
  if command -v cygpath >/dev/null 2>&1; then html="$(cygpath -m "$html")"; pdf="$(cygpath -m "$pdf")"; fi  # Git Bash on Windows
  "$chrome" --headless=new --no-sandbox --disable-gpu --no-pdf-header-footer \
    --print-to-pdf="$pdf" "file:///$html" >/dev/null 2>&1
  rm -f "$out/$f.html"
  echo "wrote $out/$f.pdf"
done
