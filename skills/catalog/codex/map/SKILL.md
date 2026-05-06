---
name: map
description: Explain where a file, package, feature, or bug fits in the system without proposing refactors. Use when the user asks to zoom out, orient, map the system, explain ownership, trace call paths, or understand context before acting.
---

# Map

Orient around an area before changing it or explain why a local detail matters. Connect the file to runtime behavior, ownership, and verification without turning the answer into a refactor proposal.

## Codex Defaults

- Inspect the actual file/package before explaining.
- Use `docs/CODEBASE-MAP.md` and package READMEs when ownership is unclear.
- Prefer concrete call paths and commands over conceptual labels.
- Keep the answer grounded in what the user asked; do not broaden into refactor advice.
- If the user asks for structural change, use `arch` instead.

## Orientation Pass

1. Identify the layer: app, runtime, domain, integration, CLI, extension, UI, native, operations, or docs.
2. Name the owning package or directory and its consumer surfaces.
3. Trace the inbound path: how user input, commands, events, routes, or data arrive.
4. Trace the outbound path: what state, tools, UI, network calls, or artifacts are produced.
5. Identify the contract: exported types, CLI JSON envelope, route behavior, prompt fragment, skill, tool schema, or rendered UI state.
6. Note neighboring modules that should not absorb this responsibility.

## Answer Shape

Keep the explanation practical:

- What this area owns.
- What calls it.
- What it calls.
- What invariants matter.
- Where to edit for the requested change.
- How to verify without testing unrelated surfaces.

When explaining a bug, separate symptom, mechanism, and owner. Do not jump from local code to a broad refactor unless the local mechanism demonstrates structural friction.

## Useful Anchors

- `apps/terminal-agent`: main interactive/headless runtime.
- `apps/dxpp-shell` and `apps/dxpp-shell-v2`: OpenTUI shell surfaces; real terminal behavior matters.
- `apps/operator-ui`: Solid browser command center.
- `packages/runtime/*` and `packages/dxpp-*`: reusable runtime/package contracts.
- `packages/extensions/dxp`: DXP instance tools, prompts, skill registration, and runtime contract.
- `operations/`: ticket state, session logs, evals, and knowledge artifacts.
