# santiagosainz-skills

Portable agent skills for Codex, OpenCode, and Pi.

This repo packages a skill catalog around a small native core:

- `align-change`
- `project-language`
- `slice-plan`
- `prove-change`
- `debug-loop`
- `architecture-pass`
- `work-handoff`

The core skills follow the Unix/Pi doctrine: one job, text-in/text-out, explicit inputs and outputs, honest capability boundaries, bounded output, on-demand loading, and a changed approach after two repeated failures.

## Layout

```text
skills/core/              Canonical native skills
skills/catalog/codex/     Local Codex skill catalog
skills/catalog/opencode/  OpenCode/global skill catalog
skills/catalog/pi/        Pi skill catalog
adapters/                 Runtime-specific usage notes
docs/                     Architecture, provenance, compatibility
scripts/install.sh        Manifest-driven installer
catalog.json              Skill manifest
```

## Install

Dry run everything:

```sh
scripts/install.sh --dry-run
```

Install all compatible skills to detected local runtimes:

```sh
scripts/install.sh
```

Install one runtime:

```sh
scripts/install.sh --target codex
scripts/install.sh --target opencode
scripts/install.sh --target pi
```

Install only the native core:

```sh
scripts/install.sh --core-only
```

## Runtime Notes

- Codex: prefer direct tool work, checklist state, and local verification.
- OpenCode: prefer `todowrite` for live work tracking; use external issue skills only when the user asks for a tracker.
- Pi: prefer file-backed process state with `PLAN.md`, `STATE.md`, `VERIFY.md`, and `TODO.md`.

## Research Package

- [Product spec](docs/product-spec.md)
- [Naming system](docs/naming-system.md)
- [Runtime adapters](docs/runtime-adapters.md)
- [Evaluation rubric](docs/evaluation-rubric.md)
- [Research matrix](docs/research-matrix.md)
- [Roadmap](docs/roadmap.md)

## Safety

This repo intentionally excludes runtime state, sessions, auth files, logs, memories, caches, and bundled system skills.
