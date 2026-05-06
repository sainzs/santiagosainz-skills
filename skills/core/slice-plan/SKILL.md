---
name: slice-plan
description: Convert a plan, PRD, backlog item, or vague feature into independently verifiable vertical slices. Use when work needs to become implementation issues, a PLAN.md, or an execution sequence.
---

# slice-plan

Break work into slices that can be built, reviewed, and verified independently.

## Unix/Pi Contract

- Do one job: convert intent into ordered, independently provable work.
- Consume a plan, PRD, issue, or conversation; emit slices with acceptance criteria and verification.
- Make every slice pipeable into `PLAN.md`, a tracker issue, or an implementation prompt.
- Avoid ceremony: no full process framework when a two-step plan is enough.
- Keep tool and tracker assumptions explicit.

## Use

Use for plan breakdowns, implementation sequencing, issue creation, PRD-to-work conversion, or when a task is too large to complete safely in one edit.

## Slice Rules

- Each slice should produce observable behavior or a meaningful invariant.
- Each slice should include tests or a concrete verification command.
- Prefer vertical slices through the real interface over layer-by-layer tasks.
- Mark human-decision slices separately from agent-executable slices.
- Keep dependencies explicit and minimal.

## Workflow

1. Read the source plan and the current implementation surface.
2. Identify the narrowest first slice that reduces uncertainty.
3. Split remaining work by user-visible behavior, contract, or migration step.
4. Attach acceptance criteria, files likely touched, and verification commands.
5. If the user asked to create issues or files, publish/write them after confirming any tracker or path requirements.

## Output

For each slice:

- Title.
- Type: executable, decision, review, or cleanup.
- Acceptance criteria.
- Likely files.
- Verification.
- Dependencies.

End with the recommended first slice.
