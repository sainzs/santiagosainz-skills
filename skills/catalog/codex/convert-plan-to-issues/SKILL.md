---
name: convert-plan-to-issues
description: Convert a plan or PRD into independently grabbable vertical issues. Use when the user asks to create tickets, split work, make backlog items, or turn a plan into implementation issues.
---

# convert-plan-to-issues

Break work into thin vertical slices that are independently useful and verifiable.

## Use

Use when a plan, PRD, or conversation should become backlog issues.

## Do Not Use

Do not use for a single implementation slice. Use plan-smallest-working-change instead.

## Required Inputs

- Plan, PRD, issue, or conversation summary.
- Target tracker if publishing is requested.

## Allowed Side Effects

- Draft issues by default.
- Do not create tracker issues unless explicitly asked.

## Research Budget

Inspect the repo enough to avoid fantasy tickets: affected areas, validation commands, existing labels, and dependencies.

Read [references/backlog-routing.md](references/backlog-routing.md) when repository-specific issue routing or backlog labels matter.

## Validation

Each issue must have a clear acceptance test and be small enough for one agent session where possible.

## Output Contract

Return:

1. Issue title.
2. Goal.
3. Acceptance criteria.
4. Validation commands.
5. Dependencies.
6. Labels.
7. AFK or HITL.

## Stop Rules

Stop at the issue list unless the user asks to publish.

## Example Invocation

Use convert-plan-to-issues to turn this PRD into vertical implementation tickets.
