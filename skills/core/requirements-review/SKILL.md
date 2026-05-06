---
name: requirements-review
description: Review requirements before implementation by turning fuzzy intent into decisions, constraints, risks, and a first executable step. Use when the user asks to clarify scope, review requirements, resolve ambiguity, identify constraints, or use align-change.
---

# requirements-review

Resolve ambiguity quickly enough that implementation can start.

## Unix/Pi Contract

- Do one job: turn unclear intent into the next executable step.
- Consume repo facts and user intent; emit decisions, blockers, next step, and proof command.
- Stay terse. Ask only the question that changes the next action.
- Do not hide capability gaps. If evidence, tools, credentials, or runtime access are missing, say exactly what is missing.
- Stop discovery when the entry point and first proof are clear.

## Use

Use for feature ideas, refactors, product decisions, workflow changes, migrations, and plans that are not yet concrete enough to edit safely.

## Do Not Use

Do not use when the request is already a clear edit, a failing command, a review, or a pure explanation.

## Workflow

1. Read the current repo or config surface that will be changed.
2. Extract the user goal, non-goals, constraints, existing contracts, likely risks, and missing choices.
3. Ask only the decisions that block a safe first step. Prefer one concise question over a broad interview.
4. If enough context exists, choose conservative defaults and state them.
5. End with a first executable step and the verification command that proves it.

## Decision Quality

- Prefer repo truth over stale docs.
- Prefer the smallest user-visible behavior that can be verified end to end.
- Prefer preserving existing interfaces unless the interface is the problem.
- Name irreversible, external, security, or data-loss risks explicitly.

## Output

Return:

1. Goal in one sentence.
2. Decisions already resolved.
3. Open blocker, if any.
4. First step to implement.
5. Verification command.

If the user asked for execution, continue into the first step after the review.
