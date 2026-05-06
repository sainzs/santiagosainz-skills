---
name: architecture-review
description: Review architecture for maintainability risks, boundary leaks, naming drift, shallow modules, missing contracts, and staged refactors. Use when the user asks to review architecture, simplify architecture, reduce coupling, or use architecture-pass.
---

# architecture-review

Find the smallest structural moves that improve future change.

## Unix/Pi Contract

- Do one job: identify structural risk and the next reversible architecture move.
- Consume interfaces, callers, tests, docs, and dependency evidence; emit ranked risks and staged refactors.
- Prefer small composable modules with text-visible contracts over hidden orchestration.
- Do not invent a new framework when a boundary, name, or test contract fixes the pressure.
- Stop at ranked candidates unless implementation is explicitly requested.

## Use

Use for architecture review, codebase simplification, module boundary cleanup, dependency direction, duplicated concepts, and testability gaps.

## Research Budget

Inspect:

1. Public entrypoints and interfaces.
2. Callers and dependency direction.
3. Tests and verification gates.
4. ADRs, glossary, and docs for intended boundaries.
5. Repeated names, config paths, and error handling.

Stop after the top risks are clear.

## Review Lenses

- Ownership: who owns this behavior and where should changes land?
- Boundary: which imports, data shapes, or side effects cross layers awkwardly?
- Coupling: what hidden ordering, global state, config, or environment assumptions exist?
- Depth: which modules expose too much choreography through a shallow interface?
- Duplication: which concepts are implemented more than once with different names?
- Proof: what contract tests or smoke checks are missing?
- Migration: what is the smallest reversible refactor path?

## Output

Return:

1. Ranked risks with file evidence.
2. User or maintainer cost.
3. Small staged refactors.
4. Tests or checks to add.
5. Recommended first move.

Do not perform a broad refactor unless the user explicitly asks for implementation.
