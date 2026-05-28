# Release Checklist

Use this checklist before tagging a public release or submitting the Codex for
Open Source application.

## Local Checks

- `scripts/validate-catalog.sh`
- `scripts/install.sh --dry-run`
- `git status --short`

## Public Repository Checks

- Repository is public.
- README explains the maintainer workflow and install path.
- License is present.
- Provenance says which files are original and what is excluded.
- No runtime state, auth files, logs, memories, caches, or copied private skills
  are present.
- At least one issue or pull request shows active maintenance.
- A release tag exists, starting with `v0.1.0`.

## Codex for OSS Submission Checks

- GitHub profile is public.
- Repository URL is public.
- Applicant role is primary maintainer.
- OpenAI organization ID is available: `org-qj4lo0GPnF359xAeS0iTUU3f`.
- ChatGPT account email is available.
- Eligibility answer fits within 500 characters.
- API-credit usage answer fits within 500 characters.
