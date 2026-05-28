# Codex `test-and-verify` Example

This transcript shows the intended maintainer workflow for the
`test-and-verify` skill using this repository as the target project.

## User Request

> Use `test-and-verify` to prove the skills catalog is installable without
> changing my live runtime.

## Expected Agent Behavior

1. Select the narrowest behavior to prove: the manifest resolves to real skill
   directories and the installer can plan all copies in dry-run mode.
2. Run the validation script.
3. Run the installer in dry-run mode.
4. Report exact commands and the evidence.

## Evidence

```sh
$ scripts/validate-catalog.sh
catalog ok
```

```sh
$ scripts/install.sh --dry-run
copy skills/core/requirements-review -> ~/.codex/skills/requirements-review
copy skills/core/requirements-review -> ~/.agents/skills/requirements-review
copy skills/core/requirements-review -> ~/.pi/agent/skills/requirements-review
copy skills/core/domain-modeling -> ~/.codex/skills/domain-modeling
copy skills/core/domain-modeling -> ~/.agents/skills/domain-modeling
copy skills/core/domain-modeling -> ~/.pi/agent/skills/domain-modeling
copy skills/core/architecture-review -> ~/.codex/skills/architecture-review
copy skills/core/architecture-review -> ~/.agents/skills/architecture-review
copy skills/core/architecture-review -> ~/.pi/agent/skills/architecture-review
copy skills/core/implementation-plan -> ~/.codex/skills/implementation-plan
copy skills/core/implementation-plan -> ~/.agents/skills/implementation-plan
copy skills/core/implementation-plan -> ~/.pi/agent/skills/implementation-plan
copy skills/core/test-and-verify -> ~/.codex/skills/test-and-verify
copy skills/core/test-and-verify -> ~/.agents/skills/test-and-verify
copy skills/core/test-and-verify -> ~/.pi/agent/skills/test-and-verify
copy skills/core/debug -> ~/.codex/skills/debug
copy skills/core/debug -> ~/.agents/skills/debug
copy skills/core/debug -> ~/.pi/agent/skills/debug
copy skills/core/handoff -> ~/.codex/skills/handoff
copy skills/core/handoff -> ~/.agents/skills/handoff
copy skills/core/handoff -> ~/.pi/agent/skills/handoff
```

## Maintainer Result

The catalog is installable in dry-run mode across Codex, OpenCode, and Pi
without mutating any runtime skill directory.
