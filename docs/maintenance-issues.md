# Initial Maintenance Issues

Create these issues after the repository is public. They provide useful active
maintenance evidence without inflating scope.

## Issue 1: Add GitHub Actions Validation

Title:

```text
Add catalog validation workflow
```

Body:

```markdown
Run `scripts/validate-catalog.sh` and `scripts/install.sh --dry-run` on pull
requests so contributors get immediate feedback when a skill path, manifest
entry, or install target drifts.
```

Labels: `maintenance`, `good first issue`

## Issue 2: Expand Codex Usage Examples

Title:

```text
Add two more Codex usage transcripts
```

Body:

```markdown
Add examples for `debug` and `handoff` using a small public repository or this
repo itself. Each transcript should include the user request, expected agent
behavior, exact commands, and maintainer result.
```

Labels: `documentation`, `good first issue`

## Issue 3: Add Manifest Schema Check

Title:

```text
Validate required manifest metadata
```

Body:

```markdown
Extend `scripts/validate-catalog.sh` so every skill must include `name`,
`group`, `status`, `path`, `targets`, `provenance`, and `runtimeBehavior`.
```

Labels: `maintenance`
