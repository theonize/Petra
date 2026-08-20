# Changelog

All notable changes to Petra docs.

## 2026-08-20

- Website: MkDocs Material site published to GitHub Pages on every merge to `main` (`.github/workflows/pages.yml`, `.mkdocs/mkdocs.yml`, per-folder `.pages` titles); PRs build strictly and attach a preview artifact; handout PDFs rendered by `12-quick-reference/build-pdfs.sh` to `/pdf/`; folder links point at `README.md` so they resolve on both GitHub and the site
- Each quick-reference page now carries a **Download the two-page PDF** link (to the workflow-built `/pdf/` file); the line is hidden in the PDF itself
- `11-reference/open-questions.md` → **`10-templates/our-congregation.md`**: the open-questions list becomes a fill-in-the-blank template for each church's names, clocks, tools, and rules, with a pointer to the page where every value is used; questions Petra itself had already answered were dropped
- Logo: `assets/petra.jpg` (the rock-cut city under the star) is the runbook mark — derived `petra-logo.png`, `favicon.png`, `favicon.ico`, `apple-touch-icon.png`; used as site logo + favicon, README header, and beside the title on the handout PDFs; site palette moved to deep purple to match
- QR codes: every site page embeds a QR of its own URL (print-only on screen; `qr.svg` / `qr.png` served beside each page; "QR for this page" link in the footer) via `.mkdocs/hooks/qr.py`; handout PDFs carry a QR to their live page beside the title and ship `/pdf/<name>.qr.png`
- Removed per-page **Status / Last reviewed / Review cadence** stamps and the README status legend — Petra is a living system; git history and this changelog are the record. Pages keep their **Owner** line. “Active policy” wording simplified to “policy” in decision rights and CONTRIBUTING
- Roles renamed to match the line of authority **Pastor → Director → team leads**: the ministry owner (formerly “Worship Lead”) is now the **Director** — owns congregational musical worship under the pastor, appoints Worship Lead / Song Selector / Tech Lead, and carries responsibility and accountability for the worship experience (pastor has final say); the musical lead (formerly “MD” / “Music Director”) is now the **Worship Lead**. Charters swapped (`01-roles/director.md`, `01-roles/worship-lead.md`), decision rights updated (Director appoints team leads, pastor consulted; pastor appoints the Director), definitions record the former names
- New `12-quick-reference/` — two-page handouts that point back into the skeleton: musician (band & vocals), tech (all tech roles), Song Selector, and a pastor overview of the framework
- README routing table, PLAYBOOK, and CONTRIBUTING updated to reference the new folder

## 2026-08-19

- Foundation motion: the service is an opportunity to attend to Someone besides yourself — a distraction from the world is fine; a distraction from God is not, and attention is not aimed at the worship leaders
- Added as mission-vision "Where attention goes", values #2 "Attention goes past the platform", a platform-etiquette presence line, and a PLAYBOOK intro line

## 2026-08-18

- New `PLAYBOOK.md` — the playbook on one page: north star, five habits, every role in one line, the week at a glance
- Terminology aligned with definitions: group time is **rehearsal** (practice is personal); pre-service clock renamed to **ready for run-through** / **service-ready**
- Role index now carries one-line summaries; Service Planner noted as a hat, not a separate charter
- Stage/Logistics charter gains the same prior-rehearsal attendance line as other tech roles
- Wardrobe guidelines linked from platform etiquette and vocalist charter; annual repertoire register listed in templates index
- Small wording cleanups across checklists and charters (no policy changes)
- Established the general rehearsal flow: review the last performance, warm up, work every part of the set, explicitly rehearse every transition, and run the set in sequence
- Updated the midweek runbook, rehearsal standards, and rehearsal-agenda template to make the flow actionable

## 2026-08-17

- Defined six core song criteria: biblically defensible theology, corporate-worship intent, congregational ownership, congregational singability, clear Christian confession, and pastoral usefulness
- Added the core criteria to the Song Selector lens, song lifecycle, annual new-song gate, and per-service setlist check

## 2026-08-14

- New baseline sermon/team study: `00-foundation/freedom-in-form-study.md` — Jacob, Levitical service, Ephesians 5, and freedom through ordered service and corporate orthodoxy
- New draft song-selection policy: 50-title rolling annual ceiling; no secular/generic love songs or first-person-God songs; week-to-week carryover; doctrinal, congregational, and new-song gates
- New annual repertoire register; updated Song Selector, song lifecycle, music-library index, and setlist worksheet

## 2026-08-13

- Foundation intent: **congregation sings**; Petra = **mundane framework that frees the artist**
- Definitions: framed **worship / serve / perform / player / rehearsal** language
- Policy: **prior group rehearsal required** to serve the linked service (rehearsal standards + scheduling)
- New: `05-tech/lyrics-and-stage-displays.md` — **confidence monitors** (aka video monitors) default over stands; house lyric standards
- Terminology: video monitors = confidence monitors (preferred term)
- Tech attends prior rehearsal (same bar as band); **house + confidence slides used at practice**
- New role: **Song Selector** (set/song diet; handoff to Worship Lead)
- Updated media checklist, media/band/vocalist roles, pre-service note, glossary, open questions, culture, contributing

## 2026-08-12

- Initial runbook structure and draft policies/procedures
- Role charters for band + tech
- Templates for plans, input list, incidents, onboarding
- Open questions list for church-specific fill-in
