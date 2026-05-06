---
name: define-project-glossary
description: Create or refine project vocabulary. Use when the user asks for a glossary, CONTEXT.md, naming guidance, domain terms, aliases, acronyms, state names, or to reduce vague project language.
---

# define-project-glossary

Build concise vocabulary that makes future agent sessions cheaper and clearer.

## Use

Use when terms, states, entities, and aliases need to become explicit.

## Do Not Use

Do not use for broad docs rewrites or implementation planning.

## Required Inputs

- Repo/path and domain notes, code area, issue, or conversation context.

## Allowed Side Effects

- Read docs, code, tests, and names.
- Propose glossary entries.
- Edit files only if the user asks.

## Research Budget

Inspect docs, names, API types, tests, issue language, and user-provided vocabulary.

## Validation

Each term must be useful to domain experts or maintainers. Avoid implementation-only trivia.

## Output Contract

Return:

1. Canonical terms.
2. Aliases and acronyms.
3. State names.
4. Forbidden vague phrases.
5. Naming guidance.
6. Suggested `CONTEXT.md` patch if asked.

## Stop Rules

Stop at vocabulary. Do not drift into architecture changes.

## Example Invocation

Use define-project-glossary to draft a CONTEXT.md glossary for this repo.
