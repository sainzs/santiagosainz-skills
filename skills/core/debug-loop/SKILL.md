---
name: debug-loop
description: Diagnose a failing command, bug, flake, runtime error, wrong output, or performance regression with evidence: reproduce, minimize, hypothesize, instrument, fix, and regression-test.
---

# debug-loop

Find root cause before changing code.

## Unix/Pi Contract

- Do one job: turn a symptom into root cause, fix, and regression proof.
- Consume an exact repro, logs, runtime state, and code path; emit cause, patch, and proof.
- Keep output bounded: inspect high-signal tails, focused files, and direct repros.
- Use shell and repo-native tools first; use heavier tooling only when it improves observation.
- After two identical failures, change hypothesis or instrumentation.

## Use

Use for failing tests, CI failures, crashes, hangs, flakes, broken UI flows, bad output, slow paths, and environment drift.

## Workflow

1. Reproduce the symptom with the exact command, URL, or workflow.
2. Minimize to the smallest failing surface.
3. State one current hypothesis and the evidence that would disprove it.
4. Inspect the code path and runtime state that can affect the symptom.
5. Add temporary instrumentation only when observation is otherwise impossible; remove it before finishing.
6. Fix the root cause, not just the observed error string.
7. Add or identify a regression proof and rerun the original repro.

## Guardrails

- Do not guess from logs alone when a repro is available.
- Do not widen the fix until the local cause is understood.
- Treat hangs and concurrency failures as first-class symptoms; use timeouts, logs, and serialized repros.
- Separate pre-existing unrelated failures from failures caused by the edit.

## Output

Return:

1. Symptom and repro.
2. Root cause.
3. Fix.
4. Regression proof.
5. Commands and results.
6. Remaining risks or external blockers.
