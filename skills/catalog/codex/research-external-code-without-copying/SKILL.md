---
name: research-external-code-without-copying
description: Research external codebases without copying implementation. Use for OSS research, competitor behavior analysis, architecture comparison, API/state-machine extraction, or license-aware implementation planning.
---

# research-external-code-without-copying

Extract ideas, behavior, constraints, and tradeoffs. Do not port implementation text.

## Use

Use when the user points at an external repo, package, article, or implementation and wants to learn from it.

## Do Not Use

Do not use to copy source code, mimic file layout, reuse names wholesale, or bypass a license.

## Required Inputs

- Source repo, URL, package, or artifact.
- Target question and target project constraints, if any.

## Allowed Side Effects

- Read local or external source.
- Browse public docs.
- No writes unless the user asks for a research note.

## Research Budget

Start with README, license, manifests, public API, tests, examples, and architecture docs. Read representative implementation only after interfaces are clear.

## Validation

Record source URLs, commit or version if available, license, and exact facts that affect the target design.

## Output Contract

Return:

1. Source and provenance.
2. License and reuse notes.
3. Behavior requirements.
4. Interfaces and data flow.
5. State machines or invariants.
6. Tests and edge cases worth preserving.
7. Safe design ideas.
8. Things not to copy.
9. Target recommendations.

## Stop Rules

Stop before writing target code. Ask for explicit implementation approval if the user wants to proceed.

## Example Invocation

Use cleanroom-research on this repo and extract the behavior we should reproduce without copying implementation.
