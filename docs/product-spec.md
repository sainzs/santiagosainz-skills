# Product Spec: Engineering Skill System

## Problem Statement

Coding agents can move quickly, but generic skill catalogs become hard to use when their names are vague, their trigger descriptions compete, or they ignore the runtime they are installed into. The current repo has a useful seven-skill core, but it still reads like an internal taxonomy instead of a polished engineering workflow system.

The product goal is to make skills feel like a practical engineering control panel: easy to invoke, grounded in real software-engineering discipline, and adapted to Codex, OpenCode, and Pi without forcing the same state model onto each runtime.

## Solution

Build `santiagosainz-skills` around a small workflow spine:

1. Understand the requested change.
2. Model the system and vocabulary.
3. Review the architecture.
4. Plan executable work.
5. Verify behavior.
6. Debug failures.
7. Preserve the engineering record.

Each skill should have one job, a clear trigger surface, explicit inputs and outputs, and a runtime adapter that tells the agent how to track state in its native environment.

## User Stories

- As an engineer using Codex, I can ask for a workflow directly and get direct shell/tool execution with concise verification evidence.
- As an OpenCode user, I can rely on `todowrite` for active work tracking instead of having every planning skill create issue-shaped documents.
- As a Pi user, I can keep long-running state in `PLAN.md`, `STATE.md`, `VERIFY.md`, and `TODO.md` without importing OpenCode assumptions.
- As a maintainer of this repo, I can tell which skills are core, which are runtime-specific, and which are vendored or legacy.
- As a future public reader, I can understand what is original, what is adapted, how to install it, and how to evaluate whether a skill is good.

## Implementation Decisions

- Keep a small canonical core and treat runtime catalogs as compatibility shelves, not the primary product.
- Rename core skills around engineering workflow language that remains easy to say in daily use. Avoid compressed metaphors like `slice` or `shape`.
- Keep old names for one migration cycle as aliases or catalog entries, then archive or deprecate duplicates after usage proves stable.
- Treat issue creation as publication. Local planning should produce work items, checklists, or runtime-native state unless the user explicitly asks for tracker issues.
- Make every skill description do routing work: include natural trigger phrases, old-name aliases, and the runtime-neutral job.

## Testing Decisions

- Use prompt-routing tests before filesystem installs: sample user prompts should select the intended skill without private vocabulary.
- Use runtime behavior tests after install: Codex, OpenCode, and Pi should express the same workflow using different state surfaces.
- Use catalog hygiene tests: every manifest path resolves, no runtime state is present, and duplicate workflow skills have a stated role.

## Out Of Scope

- Building a generic marketplace.
- Automatically learning or rewriting skills from agent history.
- Publishing publicly before provenance and license review are complete.
- Removing all existing runtime-specific skills. Specialized skills should remain when they do a distinct job.

## Further Notes

The strongest positioning is not "more skills." It is "fewer, sharper workflow skills that make agents behave like disciplined engineers."
