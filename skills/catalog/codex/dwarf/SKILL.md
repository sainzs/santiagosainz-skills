---
name: dwarf
description: Evaluate architecture for load-bearing boundaries. Use when the user asks to simplify architecture, reduce coupling, deepen modules, clarify ownership, fix bad names, or find no-big-bang refactors.
---

# dwarf

Architecture smith. Load-bearing judgment. In Gremlin Mode, every boundary must explain what pressure it carries.

## Use

Use for structural reviews, module boundaries, ownership, duplicated concepts, shallow modules, hidden coupling, and refactor candidates.

## Do Not Use

Do not use for simple orientation, visual polish, or speculative rewrites.

## Inputs

Repo/path, target subsystem, pain point, and constraints.

## Side Effects

Read-only by default. Do not edit unless the user explicitly asks for an implementation slice.

## Validation

Ground every architecture claim in files, call paths, tests, docs, or repeated concepts.

## Output

Return top risks, evidence, deep-module opportunities, small refactors, migration order, validation commands, and what not to touch.

Prefer no-big-bang repairs: one boundary, one ownership clarification, or one test seam at a time.

## Stop

Stop at a ranked repair path unless asked to implement.
