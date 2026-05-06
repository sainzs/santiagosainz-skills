---
name: simplify-codebase-architecture
description: Find entropy and simplify design. Use when the user asks to improve architecture, reduce coupling, deepen modules, simplify boundaries, remove duplication, or make a codebase easier to test and navigate.
---

# simplify-codebase-architecture

Find structural friction and propose small, staged refactors.

## Use

Use for architecture review, entropy reduction, boundary cleanup, duplicated concepts, shallow modules, hidden coupling, and missing tests.

## Do Not Use

Do not use merely to explain where a file fits. Use map-codebase for that.

## Required Inputs

- Repo/path.
- Target area or architectural concern, if provided.

## Allowed Side Effects

- Read-only exploration by default.
- No edits unless the user requests implementation.

## Research Budget

Inspect module interfaces, callers, tests, dependency direction, repeated concepts, and naming drift. Prefer focused probes over whole-repo wandering.

Read [references/deep-modules.md](references/deep-modules.md) for vocabulary, doctrine checks, and candidate-quality tests.

## Seven Goblins Review

Synthesize findings through seven compact lenses. These are review lenses, not literal subagents.

1. Map Goblin: interfaces, callers, and ownership.
2. Boundary Goblin: package direction, imports, and layer leaks.
3. Coupling Goblin: hidden ordering, config, and side effects.
4. Duplicate Goblin: repeated concepts, setup, and error handling.
5. Depth Goblin: shallow modules that should hide more complexity.
6. Test Goblin: missing contract tests and private choreography tests.
7. Migration Goblin: smallest staged refactor path and rollback.

Keep the output contract below, but make each risk and refactor candidate trace back to the relevant lenses.

## Validation

Each finding must explain the maintenance cost and the safer verification path.

## Output Contract

Return:

1. Top architecture risks.
2. Evidence and affected files.
3. Small refactors.
4. Deep-module opportunities.
5. Test improvements.
6. No-big-bang migration path.

## Stop Rules

Stop at ranked candidates unless asked to design or implement one.

## Example Invocation

Use simplify-codebase-architecture on this package and find the top three structural risks.
