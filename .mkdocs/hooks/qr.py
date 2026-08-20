"""MkDocs hook: a QR code for every page.

- Appends a QR of the page's own URL to the page body (CSS hides it on screen,
  shows it when printed) plus a small on-screen "QR for this page" link.
- Writes standalone `qr.svg` and `qr.png` beside each built page, so a QR can
  be sent or embedded by URL, e.g. https://theonize.github.io/petra/01-roles/director/qr.png

Standalone use (dump QRs for every page into a folder, without building the site):

    python .mkdocs/hooks/qr.py --out some/dir [--site-url https://theonize.github.io/petra/]
"""
from __future__ import annotations

import os
import sys
from pathlib import Path

import segno

SCALE_SVG = 3
SCALE_PNG = 8
_pages: list[tuple[str, str]] = []  # (page.url, absolute url)


def _qr(url: str):
    return segno.make(url, error="m")


def _site_url(config) -> str:
    base = (config.get("site_url") or "").rstrip("/") + "/"
    return base if base != "/" else ""


def on_page_content(html: str, page, config, files):
    base = _site_url(config)
    if not base:
        return html
    url = base + page.url
    _pages.append((page.url, url))
    svg = _qr(url).svg_inline(scale=SCALE_SVG, border=4, omitsize=True)
    rel = "qr.svg" if page.url.endswith("/") or page.url == "" else page.url.rsplit("/", 1)[-1] + ".qr.svg"
    block = (
        '<div class="page-qr">'
        f'<div class="page-qr__img">{svg}<div class="page-qr__url">{url}</div></div>'
        f'<a class="page-qr__link" href="{rel}" title="QR code for this page (SVG)">QR for this page</a>'
        "</div>"
    )
    return html + block


def on_post_build(config):
    site_dir = Path(config["site_dir"])
    for page_url, url in _pages:
        qr = _qr(url)
        if page_url.endswith("/") or page_url == "":
            out_dir = site_dir / page_url
            stem = "qr"
        else:  # use_directory_urls: false
            out_dir = site_dir / Path(page_url).parent
            stem = Path(page_url).stem + ".qr"
        out_dir.mkdir(parents=True, exist_ok=True)
        qr.save(str(out_dir / f"{stem}.svg"), scale=SCALE_SVG, border=4)
        qr.save(str(out_dir / f"{stem}.png"), scale=SCALE_PNG, border=4)
    _pages.clear()


# ---------------------------------------------------------------------------
# Standalone: mirror MkDocs URL rules (README.md -> dir/, page.md -> page/)

def _page_urls(root: Path):
    for md in sorted(root.rglob("*.md")):
        rel = md.relative_to(root)
        if any(part.startswith(".") for part in rel.parts):
            continue
        parts = list(rel.with_suffix("").parts)
        if parts[-1].lower() in ("readme", "index"):
            parts = parts[:-1]
        yield "/".join(parts) + ("/" if parts else "")


def main(argv):
    import argparse

    ap = argparse.ArgumentParser(description=__doc__.split("\n")[0])
    ap.add_argument("--out", required=True, help="output directory")
    ap.add_argument("--site-url", default="https://theonize.github.io/petra/")
    ap.add_argument("--root", default=str(Path(__file__).resolve().parents[2]), help="repo root")
    a = ap.parse_args(argv)
    base = a.site_url.rstrip("/") + "/"
    out = Path(a.out)
    for page_url in _page_urls(Path(a.root)):
        name = (page_url.strip("/").replace("/", "__") or "home")
        qr = _qr(base + page_url)
        out.mkdir(parents=True, exist_ok=True)
        qr.save(str(out / f"{name}.svg"), scale=SCALE_SVG, border=4)
        qr.save(str(out / f"{name}.png"), scale=SCALE_PNG, border=4)
        print(f"{base}{page_url} -> {out / name}.png")


if __name__ == "__main__":
    main(sys.argv[1:])
