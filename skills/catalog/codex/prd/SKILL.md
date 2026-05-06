---
name: prd
description: Turn conversation and repo context into a concise product requirements document or backlog-ready spec. Use when the user asks to create, write, draft, or turn context into a PRD, product spec, requirements doc, or backlog proposal.
---

# PRD

Provenance: enhanced Codex-native version of `mattpocock/skills` `to-prd`, upstream commit `5fed805a92ddf70dedf1f32c6aadb2a08aaf4d9c`.

Synthesize from existing context. Do not run a long interview unless critical requirements are missing and cannot be discovered locally.

## Codex Defaults

- Explore the repo first if implementation reality matters.
- Use domain vocabulary from `CONTEXT.md` when present.
- Respect ADRs that constrain the solution.
- Prefer behavior-level requirements over stale file choreography.
- If publishing to GitHub, Linear, docs, or another external/shared backlog, confirm at action time before creating or modifying anything.

## PRD Shape

Include:

- Problem Statement
- Solution
- User Stories
- Implementation Decisions
- Testing Decisions
- Out Of Scope
- Further Notes

Keep user stories extensive enough to cover the feature, but keep implementation decisions focused on public interfaces, modules, contracts, and constraints.

## Output

If the user asked for a draft, return the PRD. If they asked to publish, prepare the exact body and confirm the destination before posting.
