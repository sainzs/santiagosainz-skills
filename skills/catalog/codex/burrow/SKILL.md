---
name: burrow
description: Preserve durable handoff state. Use when pausing, compacting context, ending a session, switching agents, or writing a SITREP with changed files, evidence, risks, and restart prompt.
---

# burrow

Where state survives the night. In Gremlin Mode, tomorrow's agent gets evidence, not folklore.

## Use

Use at session end, before context compaction, before switching agents, or when the user asks for a handoff.

## Do Not Use

Do not use as a substitute for validation or live planning.

## Inputs

Current repo/session, changed files, commands run, decisions, risks, and optional destination.

## Side Effects

Read git status, diffs, logs, and nearby state files. Write a handoff only if asked.

## Validation

Every completed claim needs evidence. Mark unknowns and stale facts honestly.

## Output

Return SITREP, changed files, commands/results, decisions, unresolved risks, next steps in order, and restart prompt.

## Stop

Stop when the next agent can resume without rereading the whole conversation.
