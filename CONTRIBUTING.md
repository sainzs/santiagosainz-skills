# Contributing

This repository is intentionally small. Contributions should strengthen the
portable maintainer workflow rather than expand the catalog by default.

## Acceptance Rules

- Keep each skill focused on one job.
- Include clear trigger language in `description`.
- Prefer evidence, commands, and verification over generic advice.
- Preserve runtime fit for Codex, OpenCode, and Pi.
- Do not add copied or third-party skills without documenting license and
  provenance in `docs/provenance.md`.
- Run `scripts/validate-catalog.sh` before opening a pull request.

## Good First Contributions

- Add prompt-routing cases to `docs/prompt-routing-cases.md`.
- Improve one core skill's trigger clarity.
- Add a small runtime example for Codex, OpenCode, or Pi.
- Tighten validation checks in `scripts/validate-catalog.sh`.
