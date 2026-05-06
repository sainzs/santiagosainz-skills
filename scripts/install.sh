#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TARGET="all"
DRY_RUN=0
CORE_ONLY=0

usage() {
  cat <<'USAGE'
Usage: scripts/install.sh [--dry-run] [--target codex|opencode|pi|all] [--core-only]

Installs cataloged skills into local runtime skill roots.
USAGE
}

while [ "$#" -gt 0 ]; do
  case "$1" in
    --dry-run)
      DRY_RUN=1
      ;;
    --core-only)
      CORE_ONLY=1
      ;;
    --target)
      TARGET="${2:-}"
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "Unknown argument: $1" >&2
      usage >&2
      exit 2
      ;;
  esac
  shift
done

case "$TARGET" in
  all|codex|opencode|pi) ;;
  *)
    echo "Invalid target: $TARGET" >&2
    exit 2
    ;;
esac

if ! command -v jq >/dev/null 2>&1; then
  echo "jq is required to read catalog.json" >&2
  exit 1
fi

destination_for() {
  case "$1" in
    codex) printf '%s\n' "${CODEX_HOME:-$HOME/.codex}/skills" ;;
    opencode) printf '%s\n' "$HOME/.agents/skills" ;;
    pi) printf '%s\n' "$HOME/.pi/agent/skills" ;;
  esac
}

install_one() {
  local skill="$1"
  local src="$2"
  local target="$3"
  local dest_root dest

  dest_root="$(destination_for "$target")"
  dest="$dest_root/$skill"

  if [ ! -d "$ROOT/$src" ]; then
    echo "missing source: $src" >&2
    return 1
  fi

  if [ "$DRY_RUN" -eq 1 ]; then
    echo "copy $src -> $dest"
    return 0
  fi

  mkdir -p "$dest_root"

  if [ -d "$dest" ] && diff -qr "$ROOT/$src" "$dest" >/dev/null 2>&1; then
    echo "skip unchanged $target/$skill"
    return 0
  fi

  rm -rf "$dest"
  cp -R "$ROOT/$src" "$dest"
  echo "installed $target/$skill"
}

jq -r --arg target "$TARGET" --argjson core_only "$CORE_ONLY" '
  .skills[]
  | select(($core_only == 0) or .group == "core")
  | . as $skill
  | .targets[]
  | select($target == "all" or . == $target)
  | [$skill.name, $skill.path, .]
  | @tsv
' "$ROOT/catalog.json" |
while IFS=$'\t' read -r skill src target; do
  install_one "$skill" "$src" "$target"
done
