---
name: plan-smallest-working-change
description: Plan the smallest useful change that can be implemented and verified. Use before coding when the user wants a file plan, data flow, interfaces, tests, rollback, and validation commands.
---

# plan-smallest-working-change

Plan one useful change. Keep it small enough to verify.

## Use

Use when a goal is real but too broad to edit safely.

## Do Not Use

Do not use for full PRDs, multi-issue backlog breakdown, or architecture audits.

## Required Inputs

- Goal or plan.
- Repo/path.
- Must-keep constraints, if any.

## Allowed Side Effects

- Read-only exploration.
- No edits unless the user separately asks for implementation.

## Research Budget

Inspect existing entrypoints, adjacent patterns, relevant tests, build/test commands, and interfaces touched by the slice.

## Validation

Every proposed file and command must be grounded in repo evidence or marked as new.

## Output Contract

Return:

1. Change goal.
2. Files likely touched and why.
3. Data/control flow.
4. Interface changes.
5. Test plan.
6. Rollback plan.
7. Validation commands.
8. First edit to make.

## Stop Rules

Stop when another agent could implement without choosing architecture.

## Example Invocation

Use plan-smallest-working-change to turn this auth cleanup into the smallest useful change we can verify.
