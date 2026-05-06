---
name: project-language
description: Build or refresh a compact project glossary from code, docs, ADRs, tests, and user vocabulary so agents use the codebase's real domain language. Use when names, concepts, acronyms, states, or business terms are drifting or verbose.
---

# project-language

Make the agent speak the project language instead of inventing one.

## Unix/Pi Contract

- Do one job: normalize project vocabulary from evidence.
- Consume source, tests, docs, ADRs, and user words; emit a glossary or glossary patch.
- Prefer plain text tables or bullets that can be pasted into `CONTEXT.md`, issues, or prompts.
- Keep the surface honest: mark uncertain terms instead of laundering guesses into canon.
- Stop when the current task's vocabulary is resolved.

## Use

Use when onboarding to a repo, reducing vague terminology, naming modules, creating `CONTEXT.md`, refreshing a glossary, or preparing a plan that depends on domain concepts.

## Research Budget

Inspect, in order:

1. Existing `CONTEXT.md`, `AGENTS.md`, `README`, ADRs, and issue templates.
2. Public interfaces, route names, schemas, state enums, event names, tests, and docs.
3. Repeated user vocabulary from the current task.

Stop when the terms needed for the current work are clear.

## Glossary Rules

- Prefer names already present in source and tests.
- Include aliases only when they prevent confusion.
- Define states by observable behavior, not implementation guesses.
- Record disputed or weak terms as "avoid" or "needs decision".
- Keep definitions short enough to reuse in prompts and issue titles.

## Output

Return or write, depending on the user's request:

1. Canonical term.
2. One-line meaning.
3. Aliases or forbidden synonyms.
4. Source evidence.
5. Where the term should appear in code, docs, tests, or issues.

If editing a repo glossary, preserve existing useful terms and mark uncertainty instead of deleting aggressively.
