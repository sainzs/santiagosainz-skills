# santiagosainz-skills

Portable engineering workflow skills for Codex, OpenCode, and Pi.

This repo packages a small native core for agentic software maintenance:

- `requirements-review`
- `domain-modeling`
- `architecture-review`
- `implementation-plan`
- `test-and-verify`
- `debug`
- `handoff`

The goal is not to collect hundreds of prompts. It is to make a handful of
repeatable maintainer workflows behave well across runtimes: clarify scope,
model the domain, review architecture, plan work, verify behavior, debug
failures, and preserve a durable handoff.

The core skills follow a simple contract: one job, explicit inputs and outputs,
honest capability boundaries, bounded output, on-demand loading, and a changed
approach after two repeated failures.

## Layout

```text
skills/core/              Canonical native skills
adapters/                 Runtime-specific usage notes
docs/                     Architecture, provenance, compatibility
scripts/install.sh        Manifest-driven installer
scripts/validate-catalog.sh
catalog.json              Skill manifest
```

## Install

Dry run everything:

```sh
scripts/validate-catalog.sh
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

## Why This Exists

Large open-source projects increasingly depend on agentic review, triage,
release, and security workflows. General-purpose agents can help, but they often
lose discipline when a task crosses from planning into implementation or from a
debug session into a handoff. These skills encode a maintainer-oriented loop that
keeps work evidence-based and restartable.

The Codex adapter is the primary target. OpenCode and Pi support keep the format
portable and make it easier to compare behavior across runtimes.

## Research Package

- [Product spec](docs/product-spec.md)
- [Naming system](docs/naming-system.md)
- [Runtime adapters](docs/runtime-adapters.md)
- [Evaluation rubric](docs/evaluation-rubric.md)
- [Prompt-routing cases](docs/prompt-routing-cases.md)
- [Research matrix](docs/research-matrix.md)
- [Roadmap](docs/roadmap.md)
- [Release checklist](docs/release-checklist.md)
- [Codex for OSS application brief](docs/codex-oss-application.md)

## Safety

This repo intentionally excludes runtime state, sessions, auth files, logs,
memories, caches, and bundled system skills. Run `scripts/install.sh --dry-run`
before installing into a live agent environment.

## License

MIT.
