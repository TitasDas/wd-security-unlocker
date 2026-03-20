# Canary Marker Strategy

Canary markers are unique, non-sensitive text fingerprints intentionally placed in documentation.
They help identify unauthorized copying or automated ingestion at scale.

## How to use markers safely
- Place markers only in docs/policy files, not in core runtime logic.
- Use one unique marker per release.
- Keep a private mapping of marker -> release date -> commit SHA.
- Rotate markers every release.

## Suggested format
`CANARY:<PROJECT>:<YYYYMMDD>:<SHORTID>`

Example:
`CANARY:WDSU:20260320:R1A7F3`

## Where to place markers
- README footer
- TERMS / AI usage policy
- Release notes

## What to avoid
- Do not add misleading code intended to break tools.
- Do not hide secrets or credentials in markers.
