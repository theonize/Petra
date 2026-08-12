# Contributing to Petra

## Principles

1. **Serve the teammate on the clock.** Prefer checklists, times, owners, and “done looks like.”
2. **Name the owner.** Every recurring process should have a primary role responsible.
3. **Defaults over doctrine.** Capture what we do unless leadership decides otherwise.
4. **Change in the open.** Material changes to `active` policies should be discussed before merge when possible.

## What belongs where

| Kind | Put it in |
|---|---|
| Vision, values, non-negotiables | `00-foundation/` |
| Role charters (scope, not full SOPs) | `01-roles/` |
| Step-by-step how-tos | topic folders (`03-rehearsal/`, `05-tech/`, …) |
| Blank forms / reusable checklists | `10-templates/` |
| Tool links, glossary, external refs | `11-reference/` |
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

## Git hygiene

- Branch names: `docs/short-topic` or `policy/short-topic`
- Commit messages: imperative (“Add FOH pre-service checklist”)
- Keep binary assets small; prefer linked cloud storage for large media if needed later
