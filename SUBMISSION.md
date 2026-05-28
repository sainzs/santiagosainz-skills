# Codex for OSS Submission Packet

## Current Status

- Local release tag: `v0.1.0`
- Current commit: run `git rev-parse --short HEAD`
- Release bundle: `dist/santiagosainz-skills-v0.1.0.tar.gz`
- Validation:
  - `scripts/validate-catalog.sh`
  - `scripts/install.sh --dry-run`
  - `docs/examples/codex-test-and-verify-transcript.md`

GitHub publication is blocked for the currently authenticated account because
`ssainz_adobe` is an Enterprise Managed User and GitHub does not permit public
repository creation for that account.

## Required Human Inputs

- Public-capable GitHub account or organization.
- ChatGPT account email for the application.
- OpenAI organization ID from `platform.openai.com/settings/organization`.

## Publish Commands

After authenticating `gh` with a public-capable GitHub account:

```sh
cd /Users/ssainz/Code/santiagosainz-skills
scripts/publish-public.sh
```

If the repo name should live under a specific owner:

```sh
scripts/publish-public.sh OWNER
```

## Codex for OSS Form Answers

### Role

Primary maintainer.

### Why This Repository Is Eligible

Portable Codex-first skill system for open-source maintainers. It turns common
maintenance work such as PR review, architecture review, debugging,
verification, triage, and handoff into auditable reusable workflows with a
manifest, installer, runtime adapters, safety guidance, and validation checks.

Character count: 294.

### Interest

- API credits for my project
- Codex Security

### How I Would Use API Credits

Use API credits to run Codex-powered maintenance automation: prompt-routing
evaluations, PR review dry runs, issue triage experiments, release-check
workflows, and security-oriented review of skill instructions before
publication.

Character count: 224.

### Additional Context

The project is intentionally small and reviewable. It is inspired by the public
agent-skills ecosystem but adapted for Codex's shell-first workflow, local
verification, and multi-agent handoffs. The goal is safer maintainer automation,
not a large unvetted marketplace.

Character count: 266.

## Submission URL

Official form:

https://openai.com/form/codex-for-oss/
