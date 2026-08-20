# 12 — Quick Reference

Two-page handouts that point back into the skeleton. Print or share one per role; the linked pages remain the source of truth.

| Handout | For |
|---|---|
| [musician-quick-reference.md](musician-quick-reference.md) | Band players and vocalists |
| [tech-quick-reference.md](tech-quick-reference.md) | FOH, monitors, media, lights, stream, stage |
| [song-selector-quick-reference.md](song-selector-quick-reference.md) | Song Selector (and anyone wearing that hat) |
| [pastor-overview.md](pastor-overview.md) | Pastors and elders — framework highlights and where they are in the loop |

**Printable PDFs** (rebuilt by the site workflow on every merge): [musician](https://theonize.github.io/Petra/pdf/musician-quick-reference.pdf) · [tech](https://theonize.github.io/Petra/pdf/tech-quick-reference.pdf) · [song selector](https://theonize.github.io/Petra/pdf/song-selector-quick-reference.pdf) · [pastor overview](https://theonize.github.io/Petra/pdf/pastor-overview.pdf)

**Rules for these pages**

- Stay at two printed pages (Letter, [`handout.css`](handout.css)); cut before you overflow
- Render locally: `bash 12-quick-reference/build-pdfs.sh [out-dir]` (pandoc + headless Chrome; set `CHROME=` if not on PATH) — same script CI runs
- Every claim traces to a page in the runbook — no policy lives only here
- When the source page changes, update the handout in the same change
