# 12 — Quick Reference

Two-page handouts that point back into the skeleton. Print or share one per role; the linked pages remain the source of truth.

| Handout | For |
|---|---|
| [Musician Quick Reference](musician-quick-reference.md) | Band players and vocalists |
| [Tech Quick Reference](tech-quick-reference.md) | FOH, monitors, media, lights, stream, stage |
| [Song Selector Quick Reference](song-selector-quick-reference.md) | Song Selector (and anyone wearing that hat) |
| [Petra for Pastors — Framework Highlights](pastor-overview.md) | Pastors and elders — framework highlights and where they are in the loop |

**Printable PDFs** (rebuilt by the site workflow on every merge): [musician](https://theonize.github.io/petra/pdf/musician-quick-reference.pdf) · [tech](https://theonize.github.io/petra/pdf/tech-quick-reference.pdf) · [song selector](https://theonize.github.io/petra/pdf/song-selector-quick-reference.pdf) · [pastor overview](https://theonize.github.io/petra/pdf/pastor-overview.pdf)

Each PDF carries a QR code to its live page; the QR alone is at `https://theonize.github.io/petra/pdf/<name>.qr.png`.

**Rules for these pages**

- Stay at two printed pages (Letter, [`handout.css`](handout.css)); cut before you overflow
- Render locally: `bash 12-quick-reference/build-pdfs.sh [out-dir]` (pandoc + headless Chrome; set `CHROME=` if not on PATH) — same script CI runs
- Every claim traces to a page in the runbook — no policy lives only here
- When the source page changes, update the handout in the same change
