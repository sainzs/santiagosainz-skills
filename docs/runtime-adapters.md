# Runtime Adapters

## Adapter Goal

A skill should preserve its engineering intent across runtimes while using the state and tool surfaces that runtime is good at.

## Codex

Codex is best for direct execution, shell-first inspection, concise plans, and local verification.

Use Codex behavior when:

- the user asks for implementation or verification
- the task is local and actionable
- a small checklist is enough
- direct shell commands are the fastest truth surface

Codex adapter rules:

- Use a short checklist only for multi-step work.
- Prefer `rg`, `jq`, `git`, package scripts, and narrow verification commands.
- Treat installed skills as on-demand workflow helpers, not mandatory ceremony.
- Do not write `PLAN.md` only because a skill was loaded.

## OpenCode

OpenCode is strongest when skills cooperate with its agent, command, and todo surfaces.

Use OpenCode behavior when:

- active work needs visible task tracking
- the task should move between `plan` and `build`
- the local command surface includes `/plan`, `/verify`, or custom commands
- the user is staying inside one OpenCode session

OpenCode adapter rules:

- Use `todowrite` for active implementation tasks.
- Use `/plan` for multi-step planning when it is available.
- Use `/verify` after edits.
- Keep issue publishing separate from local planning.
- Do not force Matt Pocock setup unless the user explicitly wants tracker-backed issues or repo-level agent-skill docs.

## Pi

Pi is strongest when process state is visible in files and long terminal work is managed with shell/tmux.

Use Pi behavior when:

- the task needs durable state across sessions
- the user wants terminal-first execution
- a workflow should be resumable without conversation history
- verification evidence matters as a named artifact

Pi adapter rules:

- `PLAN.md`: current plan and active step.
- `STATE.md`: current facts, decisions, runtime findings.
- `VERIFY.md`: commands run and proof.
- `TODO.md`: cross-session tasks only; keep under 20 items.
- Prefer shell-first search and repo-native runners.
- Use `tmux` for long work and bound noisy output.

## Workflow Mapping

| Workflow | Codex | OpenCode | Pi |
|---|---|---|---|
| Requirements analysis | concise decision summary | `todowrite` if it becomes work | `PLAN.md` if multi-step |
| Domain modeling | glossary patch or response | local todo if editing docs | `STATE.md` terms/decisions |
| Architecture review | findings-first review | findings plus follow-up todos | `STATE.md` architecture facts |
| Execution planning | checklist or proposed plan | `/plan` plus `todowrite` | `PLAN.md` |
| Verification engineering | command evidence | `/verify` and todo closure | `VERIFY.md` |
| Debugging | repro/fix/proof loop | todo-backed repro/fix/proof | `STATE.md` + `VERIFY.md` |
| Engineering record | final response/handoff | handoff plus remaining todos | `STATE.md`/`VERIFY.md`/restart prompt |

## Install Expectations

- Core skills install to all three runtimes.
- Runtime catalog skills install only to their matching runtime.
- Specialized skills stay specialized; workflow duplicates should become aliases or archived entries after migration.
