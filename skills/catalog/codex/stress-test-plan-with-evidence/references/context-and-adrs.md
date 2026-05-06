# Context And ADRs

## Domain Docs

Look for:

- `CONTEXT.md` for one shared glossary.
- `CONTEXT-MAP.md` for multiple domain contexts.
- `docs/adr/` for system decisions.
- Context-local `docs/adr/` folders in monorepos.

Use domain terms from `CONTEXT.md` in plans, tests, issue titles, and PRDs. If the user uses a fuzzy or conflicting term, surface the conflict and recommend a canonical term.

## When To Add Glossary Terms

Add or propose terms only when they help future agents and humans avoid repeated explanation. Do not add implementation details, class names, or one-off labels as domain vocabulary.

## When To Add ADRs

An ADR is worth it only when a decision is:

- hard to reverse,
- surprising without context,
- the result of a real tradeoff.

If any condition is missing, keep the decision in the plan or PR notes instead.

## ADR Shape

Use concise sections: Status, Context, Decision, Consequences. Include rejected options only when they prevent future re-litigation.

## Question Order

Use this order when local exploration cannot answer intent:

1. Outcome: what observable behavior should change?
2. Primary surface: CLI, TUI, browser UI, package API, operations workflow, docs, or integration.
3. Boundaries: what must not change?
4. Runtime truth: command, browser flow, terminal path, live read, or artifact that proves success.
5. Data and safety: credentials, live systems, destructive mutations, generated artifacts, or customer-visible output.
6. Test strategy: existing harness, missing harness to add, or accepted manual verification.
7. Delivery shape: one patch, staged plan, issues, docs, or commit.

Ask one question at a time and include the recommended answer. Stop once the next action is clear enough to execute safely.
