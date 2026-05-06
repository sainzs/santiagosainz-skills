# Architecture

The repo separates skill content from runtime adapters.

## Core

`skills/core` is the canonical set. These skills should remain small, composable, and runtime-neutral.

## Catalogs

Runtime catalogs preserve useful existing skills without making them part of the core doctrine:

- `skills/catalog/codex`: local Codex skills.
- `skills/catalog/opencode`: global/OpenCode skills.
- `skills/catalog/pi`: Pi skills.

Core skills are not duplicated in runtime catalogs. The installer maps them to every compatible runtime.

## Adapters

Adapters explain how the same skill intent should use each runtime's native features. This keeps the skill names portable while avoiding lowest-common-denominator behavior.

## Installer

`scripts/install.sh` reads `catalog.json`, prints planned copies in dry-run mode, skips unchanged files, and copies skill directories into runtime skill roots.
