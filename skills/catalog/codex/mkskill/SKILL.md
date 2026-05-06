---
name: mkskill
description: Create or improve Codex skills with concise SKILL.md instructions, trigger metadata, optional references/scripts/assets, and validation. Use when the user asks to write, create, update, enhance, install, or port a reusable workflow into a skill.
---

# Mkskill

Provenance: enhanced Codex-native version of `mattpocock/skills` `write-a-skill`, upstream commit `5fed805a92ddf70dedf1f32c6aadb2a08aaf4d9c`.

Create skills for another Codex session to use. Optimize for trigger clarity and low context cost.

## Codex Defaults

- Default install location is `${CODEX_HOME:-$HOME/.codex}/skills` unless the user names a repo/local folder.
- Before editing an existing skill, read its `SKILL.md` and nearby resources.
- Use `apply_patch` for manual file edits.
- Add `agents/openai.yaml` with display name, short description, and default prompt.
- Keep `SKILL.md` lean. Move optional detail to one-level `references/`.
- Add scripts only for deterministic repeated operations; test representative scripts.
- Do not include README, changelog, install guide, or other extra docs unless the user explicitly asks.

## Skill Shape

```text
skill-name/
  SKILL.md
  agents/openai.yaml
  references/   optional
  scripts/      optional
  assets/       optional
```

`SKILL.md` frontmatter must contain only `name` and `description`. Description is the trigger surface: say what the skill does and when to use it.

## Workflow

1. Understand concrete use cases and trigger phrases.
2. Choose resources: instructions only, references, scripts, assets, or templates.
3. Create or update the folder.
4. Validate frontmatter, folder name, links, and metadata.
5. Forward-test on realistic prompts when the skill is complex or risky.

## Output

Report installed path, files created/changed, validation result, and any restart/reload needed for discovery.
