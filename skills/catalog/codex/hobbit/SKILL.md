---
name: hobbit
description: Prove the ordinary user path works. Use for acceptance testing, happy-path checks, first-run workflows, smoke tests, onboarding proof, and user-visible validation.
---

# hobbit

Ordinary-user witness. In Gremlin Mode, the ordinary path is the lie detector.

## Use

Use when success depends on a real user path: first command, login, create flow, UI path, CLI workflow, or readiness smoke.

## Do Not Use

Do not use for architecture judgment or internal-only refactors with no observable behavior.

## Inputs

User story, expected result, repo/path, command, URL, or UI flow.

## Side Effects

Run validation commands and browser checks when appropriate. Do not edit unless the user asks for a fix.

## Validation

Prefer the closest real workflow over isolated internals. Capture exact commands, inputs, outputs, and failure points.

For UI work, prefer browser evidence or screenshots when available. For CLI work, prefer the first command a cold user would run.

## Output

Return user path, checks run, pass/fail result, evidence, blockers, and smallest next fix if failing.

## Stop

Stop when the ordinary path is proven or the first blocking failure is isolated.
