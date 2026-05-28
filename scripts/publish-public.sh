#!/usr/bin/env bash
set -euo pipefail

OWNER="${1:-}"
REPO_NAME="santiagosainz-skills"
DESCRIPTION="Portable engineering workflow skills for Codex, OpenCode, and Pi"

if ! command -v gh >/dev/null 2>&1; then
  echo "gh is required to publish this repository" >&2
  exit 1
fi

if [ -n "$(git status --porcelain)" ]; then
  echo "working tree must be clean before publishing" >&2
  git status --short >&2
  exit 1
fi

if [ -n "$OWNER" ]; then
  REPO="$OWNER/$REPO_NAME"
else
  REPO="$REPO_NAME"
fi

scripts/validate-catalog.sh

gh repo create "$REPO" \
  --public \
  --description "$DESCRIPTION" \
  --source=. \
  --remote=origin \
  --push

git push origin v0.1.0

gh repo view "$REPO" --json nameWithOwner,visibility,url
