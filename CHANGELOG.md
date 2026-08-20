# Changelog

All notable changes to Petra docs.

## 2026-08-20 — review pass

Responds to the editorial review (`review/FINDINGS.md`, kept local) and ports the content of PR #4, which is closed in favour of this pass.

- **Who fixes the set:** Song Selector publishes the *proposed* set by the weekly deadline; it is *fixed* when the Director confirms — or by the confirm-by time if the Director is silent; the Worship Lead publishes keys/forms/charts by a separate **keys/charts deadline** (default ≥ 48 h before ready-to-rehearse). Playbook, charters, Scope, policy, worksheet, runbook, handouts aligned
- **One set of role names:** Definitions is current-state only (rename history lives here); new *hats* — **Platform lead** (whom band and media watch; usually the Worship Lead; named on the service plan), **Service Planner**, **Section lead**; “the leader” / “platform lead” replaced throughout; **Qualified** defined (on the roster for the role, or signed off by the domain lead)
- **Director accountability** reworded to “the congregation’s worship and the team’s health”; Director does not conduct from the floor; Worship Lead owns musical calls during the service and calls freeze / monitor freeze
- **Song selection:** “ban” language → **we avoid**; leadership (Director with pastoral oversight) may make a documented exception to the two avoidances; worked allowed/avoid examples and a crude singability test; 50-title counter clarified (“sung in the trailing 12 months”, seasonal titles count, Rest does not free a slot); new-song gate checks the licensed catalog
- **Clocks / freeze:** Present · Ready (= call time) · Service-ready · **Freeze** (default doors, called once on talkback) defined and printed on the run-of-show, service plan, and every tech checklist; monitor freeze distinguished; 90-minute midweek clock rebuilt (5 frame · 5 review · 5 warm-up · **45 work · 20 run** · 10 notes) with a worked example; pre-service sample clock
- **One source for church values:** `[TBD]` and duplicate blanks removed from policy pages; runbook clock pages say “copy from Our Congregation”; Our Congregation gains *Petra defaults vs you-must-fill*, a **before-your-first-Sunday** checklist (from PR #4), safety & care rows (designated reporter, AED/exits, hearing policy), confirm-by and keys/charts clocks, licensing buckets, local song gray-area rows, strobes, first-week logistics
- **Safety (light touch):** adhere to your congregation’s protection policy; baseline stated; do not serve until you have the policy and the designated reporter; do not investigate / confront / promise secrecy; incident log carries no protection matters. **Incidents:** stopping-for-a-person rule, pastor-mic / IEM-death / feedback / power rows; no references to SOPs that don’t exist
- **Disclosure is not permission** for the prior-rehearsal rule; swap cover takes rehearsal *and* service; swap confirmer named; exception-granted fields
- **Licensing buckets** with a reporting owner; tracks-in-room ≠ masters-on-stream
- **Tech:** plain-language *minimum viable Sunday* per seat and a one-tech **boot order**; new Stage Checklist; spoken word first in FOH priorities; hearing as people-safety; strobes off by default; glossary rebuilt around volunteer vocabulary
- **Foundation:** index split Binding vs Teaching; study marked “not policy”; Jacob scenes, staff wording, Col 3:16, Num 8:19, Rom 14 / Col 2 corrected or added — **pending pastoral review**; Mission: craft removes obstacles, does not manufacture presence; Playbook trump sentence limited to artistic/preference conflicts; “Defaults over doctrine” → “Defaults over preference debates”
- **Templates:** service plan (Platform lead, Song Selector, Media, special dress, theology-sensitive note, doors/freeze); rehearsal agenda; setlist worksheet (WL columns, exceptions line, spontaneous-inside-rehearsed-song); annual register; onboarding checklist; **new Assessment Notes**; swap request; incident log; `input-list.csv` `Stand` → `Mic_mount`
- **Culture, care, onboarding:** wardrobe rewritten around function with private correction; pastoral care “bigger than the band” table; vocalist “smile with your eyes” → be present, watch the Platform lead; green-room rule written out; written assessment outcome with two listeners; first-30-days reads Mission + Values
- **README** *Start here* table and template notice; CONTRIBUTING leads with *Editing content (no git needed)* and a pre-filled issue link; Changelog and Contributing off the site sidebar; LICENSE placeholder filled; Owner line on the Playbook
- **Handouts:** drifts fixed (who grants rehearsal exceptions; who to phone; the two avoidances named), terms aligned, type enlarged

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
