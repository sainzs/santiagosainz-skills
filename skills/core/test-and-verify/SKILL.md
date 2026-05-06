---
name: test-and-verify
description: Test and verify one behavior through a tight evidence loop: baseline, failing proof when useful, minimal edit, and final proof. Use for tests, verification, TDD, regression-proofing, smoke checks, readiness validation, or prove-change.
---

# test-and-verify

Ship one behavior with evidence.

## Unix/Pi Contract

- Do one job: prove one behavior changed or still works.
- Consume a target behavior and repo commands; emit changed files plus exact proof.
- Prefer the repo-native runner and the narrowest meaningful command.
- Act, then verify. Do not narrate every tool step.
- After two identical failures, change approach instead of looping.

## Use

Use when changing behavior, fixing a bug with a known expectation, hardening a workflow, or proving an app can actually run.

## Proof Ladder

Choose the first proof that gives real confidence:

1. Existing failing test or check.
2. New behavior test through a public interface.
3. CLI/API/browser smoke repro.
4. Build/type/lint gate for structural changes.
5. Manual evidence only when automation is impractical.

## Workflow

1. Establish the baseline with the narrowest meaningful command.
2. Add a failing proof first when the behavior is testable and risk justifies it.
3. Make the smallest edit that satisfies the proof.
4. Refactor only while green.
5. Run the original proof and any adjacent gate needed for confidence.
6. Report exact commands and outcomes.

## Test Quality

- Test behavior through public interfaces.
- Avoid mocks of internals unless the boundary is external, slow, costly, or nondeterministic.
- Do not bulk-write imagined tests ahead of implementation.
- Prefer one useful regression over many brittle assertions.

## Output

Return:

1. Behavior proved.
2. Files changed.
3. Proof added or reused.
4. Commands run and results.
5. Residual risk.
