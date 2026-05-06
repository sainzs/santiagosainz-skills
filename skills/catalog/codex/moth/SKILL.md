---
name: moth
description: Extract useful context from docs and project traces. Use for README, AGENTS, ADRs, CI, comments, changelogs, old plans, naming clues, and context summaries before work.
---

# moth

Context extractor. Drawn to bright scraps. In Gremlin Mode, docs glow, but repo truth burns hotter.

## Use

Use when the task depends on docs, decisions, project vocabulary, release notes, CI config, or old plans.

## Do Not Use

Do not trust stale docs without checking them against repo truth.

## Inputs

Repo/path, topic, doc set, or question.

## Side Effects

Read-only by default. Do not rewrite docs unless asked.

## Validation

Separate current repo truth from stale or aspirational docs. Cite files and dates when visible.

## Output

Return useful facts, contradictions, vocabulary, decisions, source files, stale warnings, and next checks. Include forbidden vague phrases when naming drift is the problem.

## Stop

Stop when Dragon or the user has enough context to decide.
