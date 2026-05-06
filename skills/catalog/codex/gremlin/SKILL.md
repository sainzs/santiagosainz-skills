---
name: gremlin
description: Investigate failures and broken assumptions. Use for flakes, CI-only failures, env drift, race conditions, weird runtime behavior, failing commands, or anything in the gap between should work and why is the fan screaming.
---

# gremlin

Incident response for unstable reality. Gremlin Mode is the house style: find the loose assumption, tug gently, and listen for the fan.

## Use

Use for failing tests, flaky CI, runtime errors, missing env, timeouts, port conflicts, race conditions, and inconsistent behavior.

## Do Not Use

Do not use for speculative cleanup or architecture review.

## Inputs

Symptom, failing command, logs, expected behavior, environment, and repro path.

## Side Effects

Run commands needed to reproduce. Add temporary instrumentation only when implementing a user-approved fix, and remove it before completion.

## Loop

Reproduce, minimize, hypothesize, instrument, fix if asked, regression-test.

Prefer feedback loops in this order: existing failing check, minimal test, CLI/HTTP repro, browser repro, fixture/log replay, targeted instrumentation.

## Validation

The original repro must close or the blocker must be named exactly. A fix needs regression proof or an equivalent evidence trail. Remove temporary debug artifacts.

## Output

Return loose assumption, repro, hypotheses tested, root cause, evidence, fix or recommended fix, regression proof, and remaining risk.

## Stop

Stop and ask for the missing artifact if no useful feedback loop can be built.
