# Feedback Loops

Use the fastest loop that reproduces the user's symptom, not a nearby failure.

## Loop Options

- Failing test at the public behavior surface.
- Existing package command narrowed to one test/file/filter.
- CLI command with fixture input and asserted stdout/stderr/exit code.
- Curl or HTTP script against a local dev server.
- Browser Use flow against localhost with DOM/screenshot proof.
- Captured trace replay: request payload, event log, HAR, fixture, or saved stream.
- Throwaway harness that exercises one function or service boundary.
- Stress loop for flakes: repeat, parallelize, seed, pin clocks, narrow timing.
- Differential loop: old vs new version, config A vs config B, provider A vs provider B.

## Quality Bar

- Specific: fails for the reported symptom.
- Fast enough to run repeatedly.
- Deterministic, or high reproduction rate for flakes.
- Narrow enough that a passing result means the suspected behavior changed.

## Instrumentation

- Prefer debugger/REPL inspection when available.
- Add focused logs only at boundaries that distinguish hypotheses.
- Tag temporary logs with a unique prefix such as `[DEBUG-a4f2]`.
- Remove temporary instrumentation before final.

## If No Loop Exists

Say what was tried and what is missing. Ask for the smallest artifact that can make the bug reproducible. Do not continue with a vibe-based fix.

## DXPP Truth Sources

Use these only when working in DXPP-like repos or when the paths exist:

- `apps/dxpp-shell` / `apps/dxpp-shell-v2`: real terminal behavior, `just shell-v2` where present, `DXPP_SHELL_DEBUG=1`, and `/tmp/shellv2-events.log`.
- `apps/terminal-agent`: actual interactive or headless command behavior, not only mocked reducers.
- `apps/operator-ui`: running app plus Browser Use or Playwright inspection.
- ServiceNow, partner, and pipeline flows: prefer safe live reads; state fixture/mock boundaries when live reads are unavailable.
- Generated inventories and model catalogs: treat as drift-prone outputs, not hand-authored intent.

Final proof should name trigger, fault, fix, proof, and residual risk.
