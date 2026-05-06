---
name: prepare-agent-handoff
description: Create durable end-of-session state. Use when wrapping work, compacting context, pausing, handing off to another agent, or preparing a SITREP with changed files, evidence, risks, and next steps.
---

# prepare-agent-handoff

Make the next session cheap to resume.

## Use

Use at the end of a task, before compaction, before switching agents, or when the user asks for a status handoff.

## Do Not Use

Do not use as a substitute for verification or as a plan before work begins.

## Required Inputs

- Current repo/session context.
- User preferred destination if writing a file.

## Allowed Side Effects

- Read git status, diffs, logs, and command history.
- Write a handoff file only when requested.
- Do not commit, push, create issues, or upload without explicit instruction.

## Research Budget

Inspect only changed files, relevant commands/results, current branch/status, and existing PLAN/STATE/VERIFY files if present.

## Validation

Confirm each claimed completed item has evidence. Mark unknowns honestly.

## Output Contract

Return:

1. SITREP.
2. Changed files and purpose.
3. Commands run and result.
4. Decisions made.
5. Unresolved risks/blockers.
6. Next steps in order.
7. Suggested restart prompt.

## Stop Rules

Stop once a new agent can continue without re-reading the whole conversation.

## Example Invocation

Use prepare-agent-handoff and give me the restart prompt for the next session.
