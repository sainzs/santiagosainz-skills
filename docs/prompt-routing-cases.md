# Prompt Routing Cases

These cases are used to judge whether a maintainer or agent can choose the
right skill from natural language alone.

| Prompt | Intended skill | Acceptable alternate | Collision risk |
|---|---|---|---|
| Turn this vague feature idea into the first safe implementation step. | requirements-review | implementation-plan | Planning too early before constraints are clear. |
| What terms should we use for these states and events? | domain-modeling | requirements-review | Requirements review may skip vocabulary cleanup. |
| Review this module boundary before I refactor it. | architecture-review | domain-modeling | Glossary work may be needed first. |
| Split this PRD into independently testable tasks. | implementation-plan | requirements-review | Requirements may still be unresolved. |
| Prove this CLI behavior still works after the change. | test-and-verify | debug | Debug is only needed if the proof fails. |
| This test flakes in CI but not locally; find the cause. | debug | test-and-verify | Verification alone may not isolate root cause. |
| Write a restartable handoff for the next agent. | handoff | implementation-plan | Plan is not enough without current state. |
| Capture what changed, what passed, and what still worries us. | handoff | test-and-verify | Verification evidence may be an input. |
| Build a glossary from code, docs, and tests. | domain-modeling | architecture-review | Architecture review may use but not own language. |
| Find coupling risks before we add another provider. | architecture-review | requirements-review | Requirements may clarify the provider goal first. |
| Make a small TDD loop for this bug fix. | test-and-verify | debug | Debug if root cause is unknown. |
| Diagnose why the command exits 1 after the package update. | debug | test-and-verify | Test-and-verify may reproduce but not inspect. |
| Convert this backlog item into acceptance criteria and commands. | implementation-plan | requirements-review | Requirements review if intent is ambiguous. |
| Decide whether this name belongs in the public API. | domain-modeling | architecture-review | Boundary review may be needed. |
| Check if this abstraction is too shallow. | architecture-review | domain-modeling | Naming may be a secondary issue. |
| Preserve the exact commands for a future maintainer. | handoff | test-and-verify | Handoff should include proof but not rerun everything. |
| Run the narrowest check that proves the fix. | test-and-verify | debug | Debug if the check fails unexpectedly. |
| Stop guessing and inspect the failure path. | debug | architecture-review | Architecture review is later if structure caused it. |
| Identify open decisions before coding. | requirements-review | implementation-plan | Plan after decisions are clear. |
| Summarize the current repo language so agents stop inventing terms. | domain-modeling | handoff | Handoff preserves task state, not vocabulary. |
