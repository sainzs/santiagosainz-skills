---
name: handoff
description: Write a durable engineering handoff for ongoing agent work: changed files, current goal, evidence, risks, blocked items, and restart prompt. Use before pausing, compacting context, switching tools, ending a long session, or using work-handoff.
---

# handoff

Leave the next agent with enough truth to continue without archaeology.

## Unix/Pi Contract

- Do one job: serialize task state into a restartable text artifact.
- Consume git status, diffs, commands, risks, and user intent; emit a concise handoff.
- Treat files as memory and conversation as lossy.
- Do not fabricate timings, test results, metadata, or authorship.
- Keep the restart prompt executable.

## Use

Use when pausing, switching from Codex to OpenCode or back, preparing a SITREP, ending a long task, or preserving context before compaction.

## Gather

Inspect:

1. Current working directory and branch.
2. `git status --short` and relevant diff summary.
3. Commands run and their outcomes.
4. Files changed by this task.
5. Known failures, blockers, and assumptions.
6. User intent that must survive the handoff.

## Output

Write or return:

1. Goal.
2. Current state.
3. Changed files.
4. Evidence.
5. Risks and blockers.
6. Next steps.
7. Restart prompt.

## Quality Bar

- Distinguish user changes from agent changes when possible.
- Do not claim verification that did not run.
- Include exact commands for the next proof.
- Keep it concise enough to paste into a fresh session.
