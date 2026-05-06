---
name: triage-issues
description: Classify and prioritize issues. Use for GitHub, Linear, or local markdown issues when the user asks to triage, label, reproduce, rank severity, assign ownership, or choose the next action.
---

# triage-issues

Turn an issue into a clear routing decision.

## Use

Use for bug reports, feature requests, support issues, and local backlog notes.

## Do Not Use

Do not use for code changes or convert-plan-to-issues breakdown.

## Required Inputs

- Issue URL, body, markdown file, or pasted report.
- Backend target if writes are requested.

## Allowed Side Effects

- Read issue content and repo evidence.
- Do not update trackers, labels, assignees, or comments unless explicitly asked.

## Research Budget

Inspect enough to classify: issue body, comments, affected area, existing tests, and quick reproduction evidence when safe.

## Validation

Separate confirmed facts from assumptions. Mark reproduction status clearly.

## Output Contract

Return:

1. Severity.
2. Reproduction status.
3. Affected area.
4. Suggested labels.
5. Owner suggestion.
6. Next action.
7. Evidence.

## Stop Rules

Stop at triage decision unless the user asks to implement or publish updates.

## Example Invocation

Use triage-issues on this GitHub issue and tell me the next action.
