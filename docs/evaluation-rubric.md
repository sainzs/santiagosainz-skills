# Evaluation Rubric

Score each skill from 0 to 3 on each dimension.

| Score | Meaning |
|---|---|
| 0 | Missing or actively harmful. |
| 1 | Present but vague, bloated, or hard to invoke. |
| 2 | Useful with minor ambiguity. |
| 3 | Clear, compact, and reliably useful. |

## Dimensions

### Trigger Clarity

- 0: Name and description do not explain when to use it.
- 1: Requires knowing private vocabulary.
- 2: Has recognizable trigger phrases.
- 3: A user can invoke it naturally without naming the skill exactly.

### Single-Job Fit

- 0: Mixes unrelated jobs.
- 1: Has a main job but drifts into process sprawl.
- 2: Mostly one job with minor extras.
- 3: One job, clear stop condition.

### Runtime Fit

- 0: Assumes the wrong runtime capabilities.
- 1: Generic behavior ignores useful runtime surfaces.
- 2: Works across runtimes with small adapters.
- 3: Uses Codex, OpenCode, and Pi in their native ways.

### Verification Quality

- 0: No proof expectations.
- 1: Mentions tests vaguely.
- 2: Specifies useful proof surfaces.
- 3: Requires exact command/evidence and failure handling.

### Context Efficiency

- 0: Too long or duplicates other skills.
- 1: Large because it teaches broadly.
- 2: Compact with references when needed.
- 3: Lean frontmatter and body; optional detail is progressive.

### Publication Readiness

- 0: Contains private state, unclear source, or unsafe instructions.
- 1: Usable locally but not publishable.
- 2: Provenance is clear with minor cleanup needed.
- 3: Clean source, license posture, install docs, and validation.

## Acceptance Thresholds

- Core skills must score at least 2 in every dimension and at least 15 total.
- Runtime-specific skills may score 1 in Runtime Fit outside their target runtime.
- Legacy skills must have a documented decision: replace, keep specialized, alias, archive, or vendor/reference.

## Prompt-Routing Test

Create at least 20 prompts across these categories:

- clarify ambiguous implementation
- define terms and states
- review architecture
- break down work
- verify behavior
- debug failure
- create handoff
- publish issues
- build a specialized artifact such as PDF, screenshot, CLI, or OpenTUI

For each prompt, record:

- intended skill
- acceptable alternate skill, if any
- incorrect likely collision
- description change needed if routing is ambiguous

## Replacement Test

A new core skill is better than an old one only if it wins on:

- clearer trigger description
- lower context cost
- better runtime behavior
- at least equal proof quality
- no loss of specialized capability
