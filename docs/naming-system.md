# Naming System

## Principle

Name skills by the engineering workflow the user already recognizes. A good name should make sense in a sentence like: "Run a ___ on this."

Avoid:

- private metaphors that require learning the author's vocabulary
- overly broad nouns like `plan`
- cute compression like `shape`, `slice`, or `prove`
- names that imply external publication when the skill is local work

Prefer:

- engineering noun phrases
- familiar daily-use terms
- descriptions that include casual trigger phrases and old aliases

## Recommended Core Names

| Current | Recommended | Primary job |
|---|---|---|
| `align-change` | `requirements-analysis` | Clarify intent, constraints, risks, and first executable behavior. |
| `project-language` | `domain-modeling` | Normalize domain vocabulary, states, entities, and naming. |
| `architecture-pass` | `architecture-review` | Identify structural risk and staged refactor moves. |
| `slice-plan` | `execution-planning` | Turn intent into ordered, independently verifiable work. |
| `prove-change` | `verification-engineering` | Design and run the proof that behavior works. |
| `debug-loop` | `debugging` | Reproduce, isolate, fix, and regression-proof failures. |
| `work-handoff` | `engineering-record` | Preserve evidence, decisions, current state, and restart context. |

## Why These Names

- `requirements-analysis` is clearer than `align-change` because it names the pre-build engineering activity.
- `domain-modeling` is stronger than `project-language` because it covers terms, states, relationships, and system concepts.
- `architecture-review` is more recognizable than `architecture-pass`.
- `execution-planning` avoids `slice`, while still implying ordered, implementable work.
- `verification-engineering` is broader than `test-and-verify`; it covers tests, smoke checks, readiness, acceptance proof, and operational evidence.
- `debugging` should stay plain. It is already intuitive.
- `engineering-record` is more durable than `handoff`; it captures the artifact, not only the act of transfer.

## Trigger Description Pattern

Each core skill should use this description shape:

```yaml
description: <Workflow verb/object>. Use when the user asks for <natural phrases>, <runtime-specific phrases>, or old alias <old-name>.
```

Example:

```yaml
description: Analyze requirements before implementation. Use when the user asks to clarify scope, review requirements, resolve ambiguity, identify constraints, find the first executable slice, or use align-change.
```

## Alias Policy

- Keep old names in descriptions for one migration cycle.
- Do not keep duplicate folders forever unless the runtime cannot handle renamed skills cleanly.
- If aliases are needed, make them thin redirect skills with no independent doctrine.
- Record every alias in `catalog.json` with `replaces` and `replacedBy` metadata when the manifest is upgraded.

## Rejected Names

| Name | Reason |
|---|---|
| `shape` | Too metaphorical; not obvious in a skill list. |
| `slice` | Useful jargon, but unclear outside backlog planning. |
| `prove` | Too compressed; users may not connect it to tests/readiness. |
| `name-things` | Friendly, but less engineering-polymath than `domain-modeling`. |
| `test-and-verify` | Clear, but narrower than verification engineering. |
| `work-breakdown` | Clear, but less lifecycle-oriented than execution planning. |

## Final Core Sequence

```text
requirements-analysis
domain-modeling
architecture-review
execution-planning
verification-engineering
debugging
engineering-record
```
