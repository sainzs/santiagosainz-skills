#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required to validate catalog.json" >&2
  exit 1
fi

jq empty "$ROOT/catalog.json"

jq -r '.skills[] | [.name, .path] | @tsv' "$ROOT/catalog.json" |
while IFS=$'\t' read -r name path; do
  if [[ ! "$name" =~ ^[a-z0-9]+(-[a-z0-9]+)*$ ]]; then
    echo "invalid skill name: $name" >&2
    exit 1
  fi

  if [ ! -d "$ROOT/$path" ]; then
    echo "missing skill path: $path" >&2
    exit 1
  fi

  if [ ! -f "$ROOT/$path/SKILL.md" ]; then
    echo "missing SKILL.md: $path/SKILL.md" >&2
    exit 1
  fi
done

echo "catalog ok"
