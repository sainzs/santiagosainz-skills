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

## Current Core Names

| Old | Current | Primary job |
|---|---|---|
| `align-change` | `requirements-review` | Clarify intent, constraints, risks, and first executable behavior. |
| `project-language` | `domain-modeling` | Normalize domain vocabulary, states, entities, and naming. |
| `architecture-pass` | `architecture-review` | Identify structural risk and staged refactor moves. |
| `slice-plan` | `implementation-plan` | Turn intent into ordered, independently verifiable work. |
| `prove-change` | `test-and-verify` | Design and run the proof that behavior works. |
| `debug-loop` | `debug` | Reproduce, isolate, fix, and regression-proof failures. |
| `work-handoff` | `handoff` | Preserve evidence, decisions, current state, and restart context. |

## Why These Names

- `requirements-review` is clearer than `align-change` because it names the pre-build engineering activity in language users already say.
- `domain-modeling` is stronger than `project-language` because it covers terms, states, relationships, and system concepts.
- `architecture-review` is more recognizable than `architecture-pass`.
- `implementation-plan` avoids `slice`, while still implying ordered, implementable work.
- `test-and-verify` is more obvious than `prove-change` or `verification-engineering`; the description carries the broader readiness meaning.
- `debug` should stay plain. It is already intuitive.
- `handoff` is shorter and easier to ask for than `engineering-record`; the description carries the durability requirement.

## Trigger Description Pattern

Each core skill should use this description shape:

```yaml
description: <Workflow verb/object>. Use when the user asks for <natural phrases>, <runtime-specific phrases>, or old alias <old-name>.
```

Example:

```yaml
description: Review requirements before implementation. Use when the user asks to clarify scope, review requirements, resolve ambiguity, identify constraints, find the first executable step, or use align-change.
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
| `verification-engineering` | Accurate but too formal for daily invocation. |
| `work-breakdown` | Clear, but less lifecycle-oriented than implementation planning. |
| `engineering-record` | Accurate but less natural than asking for a handoff. |

## Final Core Sequence

```text
requirements-review
domain-modeling
architecture-review
implementation-plan
test-and-verify
debug
handoff
```
