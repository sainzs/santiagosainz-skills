# Runtime Compatibility

## Codex

Codex skills install to `~/.codex/skills`. Core and Codex catalog skills are compatible by default.

## OpenCode

OpenCode/global skills install to `~/.agents/skills`. Core and OpenCode catalog skills are compatible by default.

OpenCode-specific guidance:

- Use `todowrite` for live task tracking.
- Use `/plan` and `/verify` commands when they are available in the current OpenCode setup.
- Treat issue creation as external publication, not default local planning.

## Pi

Pi skills install to `~/.pi/agent/skills`. Core and Pi catalog skills are compatible by default.

Pi-specific guidance:

- Use `PLAN.md` for active plan state.
- Use `STATE.md` for runtime facts and decisions.
- Use `VERIFY.md` for final proof.
- Use `TODO.md` only for cross-session items, and keep it short.
