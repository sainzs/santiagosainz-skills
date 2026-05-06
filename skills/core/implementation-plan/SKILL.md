---
name: implementation-plan
description: Convert a plan, PRD, backlog item, or vague feature into ordered implementation work with acceptance criteria and verification. Use when the user asks to break down work, make an implementation plan, create tasks, plan execution, or use slice-plan.
---

# implementation-plan

Break work into tasks that can be built, reviewed, and verified independently.

## Unix/Pi Contract

- Do one job: convert intent into ordered, independently provable work.
- Consume a plan, PRD, issue, or conversation; emit tasks with acceptance criteria and verification.
- Make every task pipeable into `PLAN.md`, a tracker issue, or an implementation prompt.
- Avoid ceremony: no full process framework when a two-step plan is enough.
- Keep tool and tracker assumptions explicit.

## Use

Use for plan breakdowns, implementation sequencing, issue creation, PRD-to-work conversion, or when a task is too large to complete safely in one edit.

## Slice Rules

- Each task should produce observable behavior or a meaningful invariant.
- Each task should include tests or a concrete verification command.
- Prefer vertical tasks through the real interface over layer-by-layer tasks.
- Mark human-decision tasks separately from agent-executable tasks.
- Keep dependencies explicit and minimal.

## Workflow

1. Read the source plan and the current implementation surface.
2. Identify the narrowest first task that reduces uncertainty.
3. Split remaining work by user-visible behavior, contract, or migration step.
4. Attach acceptance criteria, files likely touched, and verification commands.
5. If the user asked to create issues or files, publish/write them after confirming any tracker or path requirements.

## Output

For each task:

- Title.
- Type: executable, decision, review, or cleanup.
- Acceptance criteria.
- Likely files.
- Verification.
- Dependencies.

End with the recommended first task.
