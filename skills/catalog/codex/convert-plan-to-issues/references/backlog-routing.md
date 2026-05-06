# Backlog Routing

Prefer the repo's existing work-tracking surface.

## Routing

- GitHub issues when the user asks for GitHub or the repo remote and permissions support it.
- Existing local ticket state when the repo has it, such as `operations/tickets/active/<CASE>/PLAN.md`.
- Existing docs surfaces such as `docs/plans/`, `docs/reports/`, or local backlog folders when already used.
- Local markdown only when the user asks for it or no shared backlog exists.

## Issue Quality

Each item should have:

- user-visible or operator-visible outcome,
- scope and non-goals,
- concrete implementation direction without stale private choreography,
- acceptance criteria with command, screenshot, live read, or test proof,
- risks for credentials, live integrations, generated files, or migration steps.

Split by independently verifiable behavior, not file type. Avoid generic cleanup issues.
