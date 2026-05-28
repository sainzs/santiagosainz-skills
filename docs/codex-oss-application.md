# Codex for OSS Application Brief

## Program Fit

OpenAI's Codex for Open Source program supports maintainers of active public
repositories with meaningful ecosystem value. Selected maintainers may receive
six months of ChatGPT Pro, Codex access, Codex Security consideration, and API
credits for maintainer automation.

This repository is positioned as a small, public, maintainer-focused skill
system for Codex. It is intentionally simple: seven portable workflows that help
agents perform open-source maintenance with evidence instead of generic prompt
drift.

## Repository Claim

`santiagosainz-skills` provides portable, MIT-licensed engineering workflow
skills for Codex, OpenCode, and Pi. It improves maintainer workflows by making
requirements review, domain modeling, architecture review, implementation
planning, verification, debugging, and handoff behavior explicit and reusable.

## Why It Is Eligible

This project is useful to the software ecosystem because it makes agentic coding
more auditable and repeatable for maintainers. The repo is not a private prompt
dump: it includes a manifest, installer, runtime adapters, provenance docs,
validation script, safety guidance, and a small core that can be reviewed by a
maintainer before installation.

The strongest eligibility path is:

- make the GitHub repository public;
- publish the MIT license and validation script;
- add two or three real usage examples from active maintenance work;
- submit the Codex for OSS form as the primary maintainer.

## Form Answers

### Role

Primary maintainer.

### Why This Repository Is Eligible

Portable Codex-first skill system for open-source maintainers. It turns common
maintenance work such as PR review, architecture review, debugging, verification,
triage, and handoff into auditable reusable workflows with a manifest, installer,
runtime adapters, safety guidance, and validation checks.

### Interest

- API credits for my project
- Codex Security, if available for workflow/security review

### API Credit Usage

Use API credits to run Codex-powered maintenance automation: prompt-routing
evaluations, PR review dry runs, issue triage experiments, release-check
workflows, and security-oriented review of skill instructions before publication.

### Additional Context

The project is intentionally small and reviewable. It is inspired by the public
agent-skills ecosystem but adapted for Codex's shell-first workflow, local
verification, and multi-agent handoffs. The goal is safer maintainer automation,
not a large unvetted marketplace.

## Evidence To Add Before Submission

- Public GitHub URL.
- `scripts/validate-catalog.sh` passing.
- One screenshot or terminal transcript showing Codex using `test-and-verify`.
- One issue or PR demonstrating active maintenance.
- A short release tag such as `v0.1.0`.
