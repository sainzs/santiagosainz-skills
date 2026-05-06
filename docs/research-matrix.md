# Research Matrix

## Source Findings

| Source | What it contributes | Product implication |
|---|---|---|
| AI Hero / Matt Pocock skills | Engineering fundamentals remain valuable with coding agents; skill themes include TDD, PRDs, architecture, diagnosis, and issue breakdown. | Keep the engineering fundamentals, but remove Claude-specific setup friction and adapt to Codex/OpenCode/Pi. |
| OpenCode skills docs | Skills are discovered from `.opencode`, `.claude`, and `.agents` roots; names must be lowercase hyphenated; descriptions decide routing; permissions can allow/deny skills. | Skill names and descriptions are product surface. Keep descriptions specific and avoid duplicate workflow skills competing for the same prompt. |
| Local OpenCode config | `todowrite` is available to build agents, plan is read-only, and local commands include `/plan` and `/verify`. | OpenCode adapter should use todos and commands instead of pretending every breakdown is a tracker issue. |
| Local Pi operating contract | Pi uses shell-first work, `PLAN.md`, `STATE.md`, `VERIFY.md`, and `TODO.md`; it values terse output, bounded logs, and exact verification. | Pi adapter should install the core skills but express state through files. |
| Polymath Made | Frames AI as amplifying engineering knowledge, design iteration, legacy documentation conversion, and trapped CAD data. | Use "engineering knowledge" and "engineering record" language; skills should capture decisions and evidence, not only prompts. |
| Polymath agent research | Dynamic hierarchical workflows and code-represented task flows are useful for broad autonomous work. | Keep workflows composable and explicit; avoid one giant skill that tries to orchestrate everything. |
| CAD/engineering AI products | Many products emphasize constraints, iteration, simulation loops, editable/auditable outputs, and downstream workflow readiness. | Borrow verification and auditability language: a good skill output should be editable, auditable, and ready for the next engineering step. |
| OpenCode community skill discussions | Users report routing uncertainty, large skill-library overhead, and need for explicit skill invocation or better descriptions. | Add a prompt-routing test and keep the core small; descriptions must include natural trigger phrases and old aliases. |

## Local Findings

| Area | Finding | Recommendation |
|---|---|---|
| Core names | Original names were functional but not polished: `align-change`, `project-language`, `slice-plan`, `prove-change`, `debug-loop`, `architecture-pass`, `work-handoff`. | Use intuitive engineering workflow names with old aliases in descriptions. |
| Codex catalog | Contains workflow duplicates and useful specialized tools. | Keep specialized tools; migrate duplicate workflow skills to aliases/archive. |
| OpenCode catalog | Contains Matt Pocock workflow skills plus native core. | Prefer core for local work; keep Matt skills for deep doctrine or explicit tracker publishing. |
| Pi catalog | Has only three specialized skills and lacks core skills in the live runtime. | Install core to Pi and update Pi adapter docs before broad cleanup. |
| Repo docs | Current docs explain layout but not product positioning, naming, evaluation, or migration. | Add product spec, naming system, runtime adapters, rubric, research matrix, and roadmap. |

## Principles Synthesized

- A skill is a workflow affordance, not just documentation.
- The description is routing infrastructure.
- Runtime-native state matters more than uniform behavior.
- Engineering language should clarify the workflow, not make names ornate.
- Verification is a first-class skill outcome.
- The system should reduce skill sprawl, not celebrate it.

## Source Links

- AI Hero: https://www.aihero.dev/
- OpenCode skills docs: https://opencode.ai/docs/skills
- Polymath Made: https://www.polymathmade.com/
- Polymath paper: https://arxiv.org/abs/2508.02959
- RapidCAD: https://rapidcad.ai/
- HelloTriangle: https://www.hellotriangle.io/
- AgenticOS skills paper: https://os-for-agent.github.io/papers/AgenticOS_2026_paper_13.pdf
