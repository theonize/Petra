# 12 — Quick Reference

Two-page handouts that point back into the skeleton. Print or share one per role; the linked pages remain the source of truth.

| Handout | For |
|---|---|
| [musician-quick-reference.md](musician-quick-reference.md) | Band players and vocalists |
| [tech-quick-reference.md](tech-quick-reference.md) | FOH, monitors, media, lights, stream, stage |
| [song-selector-quick-reference.md](song-selector-quick-reference.md) | Song Selector (and anyone wearing that hat) |
| [pastor-overview.md](pastor-overview.md) | Pastors and elders — framework highlights and where they are in the loop |

**Rules for these pages**

- Stay at two printed pages (Letter, [`handout.css`](handout.css)); cut before you overflow
- Render: `bash ~/.claude/skills/doc-to-pdf/scripts/md-to-pdf.sh <file>.md <file>.pdf --css 12-quick-reference/handout.css` (pandoc + headless Chrome/Edge)
- Every claim traces to a page in the runbook — no policy lives only here
- When the source page changes, update the handout in the same change
