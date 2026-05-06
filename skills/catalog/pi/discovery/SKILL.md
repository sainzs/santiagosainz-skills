---
name: discovery
description: Codebase search escalation for locating symbols, callers, paths, structural patterns, and export maps with the cheapest tool that answers the question. Use when you need to find where something lives or who uses it before reading broadly, zooming out, debugging, or refactoring.
---

# Discovery

Use this skill for exact lookups: "where is X?", "who calls X?", "which file owns Y?", "what exports from here?" Stop once you have a concrete file/symbol target or a clear handoff.

**Boundaries**
- Exact lookup / caller search / file hunt → stay here.
- Big-picture architecture / entry-point map → `/skill:zoom-out`.
- Broken behavior / flaky repro / perf regression → `/skill:diagnose`.
- Refactor candidate generation / deeper seams → `/skill:improve-codebase-architecture`.

**Pi-native conventions**
- Prefer shell-first search; avoid broad file reads until search narrows the target.
- Escalate only as needed: `ugrep` → `bfs` → `sg` → `pi-map` → `scan`/`scout`/`map`.
- If discovery is feeding a longer task, record the narrowed file list, symbols, or commands in `STATE.md`.

## Escalation

| Question | Tool | Example |
|---|---|---|
| String/usage anywhere? | `ugrep` | `ugrep -rn -g '*.ts' 'symbol' .` |
| Function callers? | `ugrep` | `ugrep -rn -g '*.ts' 'fn\(' .` |
| Files by name/ext? | `bfs` | `bfs . -type f -name 'pattern'` |
| Structural/AST patterns? | `sg` | `sg -p 'console.log($MSG)' --lang ts` |
| File/dir exports? | `pi-map` | `pi-map src/` |
| Module importers? | `ugrep` | `ugrep -rl -g '*.ts' "from './mod'" .` |

## Combined Patterns

```bash
ugrep -rn -g '*.ts' 'export (type|interface|class) MyType' .  # symbol → definition
ugrep -rl -g '*.ts' 'await myFunction\(' .                    # async callers
git diff --name-only HEAD~1 | xargs pi-map                    # changed file exports
ugrep -rl -g '*.ts' "from './mod'" src/                       # importers in subtree
```
