# Contributing to Petra

## Editing content (no git needed)

- **Spotted something wrong or unclear?** [Open an issue](https://github.com/theonize/petra/issues/new?title=Petra%3A%20&body=Page%3A%20%0AWhat%20is%20wrong%20or%20unclear%3A%20%0ASuggested%20wording%3A%20) — say which page and what you would change. The Director (or a maintainer) makes the edit.
- **Comfortable on GitHub?** Every page on the website has an edit (pencil) icon that opens the file; propose the change as a pull request.
- **Filling in your church’s details?** Do that in your copy of [Our Congregation](10-templates/our-congregation.md), not in the public runbook.
- Link text is the page’s title, never a file name. No per-page status stamps — git and the Changelog are the record.

## Principles

1. **Serve the teammate on the clock.** Prefer checklists, times, owners, and “done looks like.”
2. **Name the owner.** Every recurring process should have a primary role responsible. In Owner lines, `/` means primary / backup and `+` means joint.
3. **Defaults over preference debates.** Document the working default instead of arguing taste on the page. Doctrine is owned by pastors; Petra must not contradict it.
4. **Mundane framework, artistic freedom.** Document repeatable logistics so artists are free in the room; do not script the Spirit or micromanage craft.
5. **Congregation sings.** Prefer guidance that helps the room’s voice over guidance that only polishes the platform.
6. **Change in the open.** Material policy changes should be discussed before merge when possible and noted in the CHANGELOG. There are no per-page status or review stamps — git history is the record.

## What belongs where

| Kind | Put it in |
|---|---|
| Vision, values, non-negotiables | `00-foundation/` |
| Role charters (scope, not full SOPs) | `01-roles/` |
| Step-by-step how-tos | topic folders (`03-rehearsal/`, `05-tech/`, …) |
| Blank forms / reusable checklists | `10-templates/` |
| Tool links, glossary, external refs | `11-reference/` |
| Two-page role handouts (pointers only, no new policy) | `12-quick-reference/` |
| Logos, diagrams, stage plots | `assets/` |

## Page template

```markdown
# Title

**Owner:** role or person  

## Purpose
One paragraph.

## Policy (must)
Bullets that are binding.

## Procedure (how)
Numbered steps.

## Exceptions
When and who can waive.

## Related
Links to roles, templates, other SOPs.
```

## Review expectations

- Spelling and clarity matter; tone is warm and direct.
- Avoid naming specific people in durable docs when a **role** will do.
- Church-specific values (call times, room names, gear models, license numbers) live **only** in [Our Congregation](10-templates/our-congregation.md); policy pages point there instead of carrying a second blank. If you publish a fork, keep local names, clocks, and contacts out of the public tree.
- Do not store personal contact info, passwords, or private pastoral notes in this repo.

## The website (maintainers)

<https://theonize.github.io/petra/> is built from `main` by `.github/workflows/pages.yml` (MkDocs Material; config in `.mkdocs/mkdocs.yml`). Nothing to maintain for ordinary edits:

- Every `.md` becomes a page at the same path; a folder's `README.md` is its index page.
- The sidebar is generated from the folder tree. Section labels come from the `.pages` file in each folder (`title: Roles`); new pages need nothing.
- Pull requests build the site (strict — a broken link fails the check) and attach it as a downloadable `site-preview` artifact; merges deploy.
- Preview locally: `pip install mkdocs-material mkdocs-awesome-pages-plugin` then `mkdocs serve -f .mkdocs/mkdocs.yml`.
- Handout PDFs under `/pdf/` are rendered by `12-quick-reference/build-pdfs.sh` in the same workflow.
- Every page carries a QR code of its own URL (`.mkdocs/hooks/qr.py`): hidden on screen, printed bottom-right; each page also serves `qr.svg` / `qr.png` beside it (e.g. `…/01-roles/director/qr.png`) and shows a small "QR for this page" link. Handout PDFs carry a QR to their live page; `/pdf/<name>.qr.png` is the shareable file. To dump QRs locally: `python .mkdocs/hooks/qr.py --out some/dir`.

## Git hygiene

- Branch names: `docs/short-topic` or `policy/short-topic`
- Commit messages: imperative (“Add FOH pre-service checklist”)
- Keep binary assets small; prefer linked cloud storage for large media if needed later
