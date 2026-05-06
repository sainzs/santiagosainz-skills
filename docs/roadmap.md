# Roadmap

## Slice 1: Rename the Core

Goal: make the core skill names read like an engineering workflow.

Changes:

- Rename folders and frontmatter to:
  - `requirements-review`
  - `domain-modeling`
  - `architecture-review`
  - `implementation-plan`
  - `test-and-verify`
  - `debug`
  - `handoff`
- Add old aliases to descriptions.
- Update `catalog.json`, README, adapters, and docs.

Validation:

- `jq empty catalog.json`
- all manifest paths resolve
- OpenCode name regex compatibility
- prompt-routing sample for old and new names

## Slice 2: Add Manifest Metadata

Goal: make replacement and provenance decisions machine-readable.

Changes:

- Add metadata fields:
  - `status`: core, specialized, legacy, alias, archive-candidate
  - `replaces`
  - `replacedBy`
  - `runtimeBehavior`
  - `licenseReview`
- Update installer to ignore archive candidates by default.

Validation:

- manifest schema check
- dry run still reports expected install counts

## Slice 3: Runtime Adapter Upgrade

Goal: make each runtime feel first-class.

Changes:

- Codex adapter: direct tool/checklist behavior.
- OpenCode adapter: `todowrite`, `/plan`, `/verify`, and issue-publication boundaries.
- Pi adapter: `PLAN.md`, `STATE.md`, `VERIFY.md`, `TODO.md`.
- Add runtime examples for the same task in all three runtimes.

Validation:

- one example prompt per workflow per runtime
- adapter docs mention no unavailable tools

## Slice 4: Legacy Skill Decisions

Goal: reduce workflow collisions.

Changes:

- Classify duplicate workflow skills:
  - replace with core
  - keep specialized
  - alias
  - archive
  - vendor/reference
- Keep specialized skills such as screenshot, pdf, playwright, opentui, cli creation, browser/visual work.
- Do not delete until aliases and docs are in place.

Validation:

- every non-core workflow skill has a decision
- no obvious trigger collision remains undocumented

## Slice 5: Evaluation Harness

Goal: prove that names and descriptions route well.

Changes:

- Add `docs/prompt-routing-cases.md`.
- Add a small script that checks manifest paths, name regex, description length, duplicate names, and status fields.
- Record 20 prompt-routing cases with intended skill and likely collision.

Validation:

- script exits 0
- reviewer can classify at least 18/20 prompts by description alone

## Slice 6: Publication Readiness

Goal: prepare the repo for a future public GitHub remote.

Changes:

- Add license/provenance decision.
- Add public README positioning.
- Add install safety warnings and dry-run-first guidance.
- Remove or clearly vendor any entries that cannot be redistributed.

Validation:

- secret scan clean
- license review complete
- cold-reader install test passes

## Recommended Order

1. Rename the core.
2. Add manifest metadata.
3. Upgrade runtime adapters.
4. Classify legacy skills.
5. Build evaluation harness.
6. Prepare publication.
