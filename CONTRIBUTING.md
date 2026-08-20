# Contributing to Petra

## Principles

1. **Serve the teammate on the clock.** Prefer checklists, times, owners, and “done looks like.”
2. **Name the owner.** Every recurring process should have a primary role responsible.
3. **Defaults over doctrine.** Capture what we do unless leadership decides otherwise.
4. **Mundane framework, artistic freedom.** Document repeatable logistics so artists are free in the room; do not script the Spirit or micromanage craft.
5. **Congregation sings.** Prefer guidance that helps the room’s voice over guidance that only polishes the platform.
6. **Change in the open.** Material changes to `active` policies should be discussed before merge when possible.

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

**Status:** draft | active | pilot | deprecated  
**Owner:** role or person  
**Last reviewed:** YYYY-MM-DD  
**Review cadence:** quarterly | annual | as-needed

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
- Mark church-specific numbers (call times, room names, gear models) clearly so they are easy to update.
- Do not store personal contact info, passwords, or private pastoral notes in this repo.

## The website

<https://theonize.github.io/Petra/> is built from `main` by `.github/workflows/pages.yml` (MkDocs Material; config in `.mkdocs/mkdocs.yml`). Nothing to maintain for ordinary edits:

- Every `.md` becomes a page at the same path; a folder's `README.md` is its index page.
- The sidebar is generated from the folder tree. Section labels come from the `.pages` file in each folder (`title: Roles`); new pages need nothing.
- Pull requests build the site (strict — a broken link fails the check) and attach it as a downloadable `site-preview` artifact; merges deploy.
- Preview locally: `pip install mkdocs-material mkdocs-awesome-pages-plugin` then `mkdocs serve -f .mkdocs/mkdocs.yml`.
- Handout PDFs under `/pdf/` are rendered by `12-quick-reference/build-pdfs.sh` in the same workflow.

## Git hygiene

- Branch names: `docs/short-topic` or `policy/short-topic`
- Commit messages: imperative (“Add FOH pre-service checklist”)
- Keep binary assets small; prefer linked cloud storage for large media if needed later
