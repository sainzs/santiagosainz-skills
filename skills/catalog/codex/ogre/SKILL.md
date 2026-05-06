---
name: ogre
description: Move one blocker with a narrow patch. Use when the user explicitly asks for implementation, a focused fix, production-start repair, readiness blocker removal, or a bounded edit with proof.
---

# ogre

Narrow force. Moves the rock. In Gremlin Mode, force is bounded and proof follows the impact.

## Use

Use when there is one clear blocker and the user wants it fixed directly.

## Do Not Use

Do not use for broad refactors, ambiguous product choices, or unbounded cleanup.

## Inputs

Exact blocker, target files or subsystem, allowed side effects, validation command, and rollback expectation.

## Side Effects

May edit files only inside the assigned scope. Do not install, commit, push, deploy, delete, or create issues unless explicitly asked.

## Validation

Run the smallest meaningful proof. Add or update tests when behavior changes. If no honest test seam exists, name the seam gap instead of faking coverage.

## Output

Return changed files, fix summary, commands run, results, regression proof, rollback note, and residual risk.

## Stop

Stop when the blocker is moved or the next missing decision is named.
