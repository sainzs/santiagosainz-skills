# Test Quality

## Good Tests

- Verify behavior through public interfaces.
- Describe what the system does, not how internals collaborate.
- Survive refactors that preserve behavior.
- Use the repo's existing fixtures, factories, and command style.
- Mock only external boundaries: network, provider APIs, clock, filesystem, browser driver, payment, email, or other systems outside the unit of ownership.

## Bad Tests

- Assert private function calls or internal data choreography.
- Require broad unrelated setup for a narrow behavior.
- Pass when the user-visible behavior is broken.
- Fail on harmless renames or internal extraction.
- Encode speculative future requirements.

## Vertical Slices

Do one behavior at a time:

```text
RED: add one behavior check
GREEN: minimal implementation
REFACTOR: improve shape while green
```

Do not write all tests first and all implementation later. Each cycle should teach the next cycle.

## Refactor Gate

Refactor only after green. Prefer refactors that make the public interface deeper, reduce repeated caller knowledge, or improve locality of future changes.

## DXPP Test Shapes

Use these only when the repo has matching surfaces:

- Observable behavior is often a CLI JSON envelope, TUI interaction, browser state, session event, tool schema, integration response, or exported package API.
- Keep mocks at external system boundaries: network, ServiceNow, filesystem clocks, model providers, browser drivers.
- For terminal UI changes, include render-count, timeout, or visual harness checks when that surface already has them.
- For generated catalogs or workspace metadata, verify both generation and consumer behavior when practical.
- Common commands: package-local test scripts, `vp test --run`, `pnpm run vp:check`, `pnpm run vp:test`, shell visual/timeout harnesses, and `./test.sh` for broad CI-like checks when present.
