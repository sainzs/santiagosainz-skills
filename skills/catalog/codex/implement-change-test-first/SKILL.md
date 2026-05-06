---
name: implement-change-test-first
description: Implement one behavior by writing the proof first. Use when the user asks for TDD, tests first, regression-proofing, public contract tests, or a safer test-driven change.
---

# implement-change-test-first

Use TDD only when there is a meaningful observable behavior and a real test seam.

## Use

Use for test-first features, bug fixes, regressions, public contracts, and safer refactors.

## Do Not Use

Do not use when tests would only assert mocks, private methods, or implementation shape.

## Required Inputs

- Target behavior.
- Public surface or user-visible path.
- Repo/path.

## Allowed Side Effects

- If implementation is requested, add or edit tests and code.
- Do not install dependencies or broaden scope without explicit approval.

## Research Budget

Find the nearest existing test pattern, runner, target API, and validation command before writing.

Read [references/test-quality.md](references/test-quality.md) when choosing test boundaries, mocks, fixtures, repo-specific commands, or refactor timing.

## Validation

Show red first, then green, then refactor only while green. Final proof must include the relevant test command.

## Output Contract

Return:

1. Behavior under test.
2. Test seam.
3. Red result.
4. Minimal implementation.
5. Refactor, if any.
6. Final validation.

## Stop Rules

Stop if no honest test seam exists. Report the seam gap instead of writing fake tests.

## Example Invocation

Use implement-change-test-first to add this validation behavior tests first.
