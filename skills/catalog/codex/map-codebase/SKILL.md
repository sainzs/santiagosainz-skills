---
name: map-codebase
description: Map an unfamiliar codebase before edits. Use when entering a new repo, module, feature area, or bug area and the user asks to orient, understand structure, find entrypoints, or explain how the system fits together.
---

# map-codebase

Read-only by default. Build a useful architecture map, not a refactor plan.

## Use

Use when the user needs orientation in an unfamiliar repo or subsystem.

## Do Not Use

Do not use for implementation, architecture improvement, issue breakdown, or visual review.

## Required Inputs

- Current repo or path.
- User question or target area, if provided.

## Allowed Side Effects

- Read files and run read-only discovery commands.
- Do not edit files, install packages, create issues, or run destructive commands.

## Research Budget

Inspect only enough to map the system:

- README and AGENTS-style instructions.
- Package manifests and lockfiles.
- CI/build/test config.
- Top-level folders.
- Docs and architecture notes.
- Tests near the target area.
- Main entrypoints and public APIs.

Prefer semantic repo search when available. Use fast text/file search for exact names.

## Validation

If you mention commands, verify they exist in manifests or docs. If uncertain, mark them as inferred.

## Output Contract

Return:

1. Summary.
2. Architecture map.
3. Key files.
4. Commands with source.
5. Risks and unknowns.
6. Next probes.

## Stop Rules

Stop once the map is good enough to choose the next action. Do not drift into implementation.

## Example Invocation

Use map-codebase in `/Users/ssainz/Code/oss-research` and map the repo before we touch anything.
