---
name: stress-test-plan-with-evidence
description: Stress-test a plan before implementation using repo evidence. Use when the user asks to grill, challenge, harden, clarify, or pressure-test a plan, PRD, design, migration, or implementation approach.
---

# stress-test-plan-with-evidence

Ask fewer, better questions. Inspect local evidence before asking anything the repo can answer.

## Use

Use when a plan needs alignment, risk surfacing, or sharper decisions before edits.

## Do Not Use

Do not use for implementation or backlog creation.

## Required Inputs

- User plan or goal.
- Repo/path when implementation context matters.

## Allowed Side Effects

- Read files and docs.
- Ask questions.
- Do not edit docs, create ADRs, or create issues unless explicitly asked.

## Research Budget

Read enough to avoid asking lazy questions: relevant docs, AGENTS.md, manifests, existing modules, tests, and decision records.

Read [references/context-and-adrs.md](references/context-and-adrs.md) when domain docs, planning surfaces, or hard-to-reverse decisions matter.

## Validation

Every challenge should connect to evidence, a concrete risk, or a missing decision.

## Output Contract

Return:

1. Clarified goal.
2. Assumptions.
3. Decisions needed.
4. Risks and evidence.
5. Recommended first slice.

## Stop Rules

Stop when the plan is decision-complete enough for a small first slice.

## Example Invocation

Use stress-test-plan-with-evidence on this migration plan before we implement it.
