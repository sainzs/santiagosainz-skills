---
name: diagnose-failures
description: Debug hard bugs, flakes, failing checks, runtime errors, and performance regressions. Use when the user reports something broken and wants root cause, evidence, fix, and regression coverage.
---

# diagnose-failures

Debug through evidence: reproduce, minimize, hypothesize, instrument, fix, regression-test.

## Use

Use for bugs, flakes, failing CI, broken commands, wrong output, crashes, or slow paths.

## Do Not Use

Do not use for speculative cleanup, architecture review, or broad refactors.

## Required Inputs

- Symptom, command, log, issue, failing test, or reproduction path.
- Expected behavior if known.

## Allowed Side Effects

- Run commands needed to reproduce.
- Add temporary instrumentation only when needed; remove it before completion.
- Edit code/tests only when the user asked for a fix.

## Research Budget

First build a feedback loop:

1. Existing failing test/check.
2. Minimal test at the right seam.
3. CLI or HTTP repro.
4. Browser/scripted repro for UI.
5. Captured fixture/log replay.
6. Targeted instrumentation.

Read [references/feedback-loops.md](references/feedback-loops.md) when the repro is weak, flaky, slow, visual, integration-heavy, or missing.

## Validation

A fix is not done until the original repro no longer fails, regression proof exists, temporary debug artifacts are removed, and root cause is stated with evidence.

## Output Contract

Return:

1. Symptom and repro.
2. Root cause.
3. Evidence.
4. Fix summary.
5. Regression coverage.
6. Commands run and results.
7. Remaining risks.

## Stop Rules

If no credible feedback loop can be built, stop and ask for the missing artifact or environment.

## Example Invocation

Use diagnose-failures: this command fails intermittently, find the root cause and regression-proof it.
