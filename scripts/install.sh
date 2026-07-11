#!/usr/bin/env sh

set -eu

skill="${1:-all}"
force="${2:-}"

case "$skill" in
  all|tg-product-ugc-video|tg-amazon-listing-visual-builder) ;;
  *)
    echo "Unknown skill: $skill" >&2
    echo "Use: all, tg-product-ugc-video, or tg-amazon-listing-visual-builder" >&2
    exit 1
    ;;
esac

if [ -n "$force" ] && [ "$force" != "--force" ]; then
  echo "Unknown option: $force" >&2
  echo "The only supported option is --force" >&2
  exit 1
fi

script_dir=$(CDPATH= cd "$(dirname "$0")" && pwd)
repo_root=$(CDPATH= cd "$script_dir/.." && pwd)
source_root="$repo_root/skills"
codex_root="${CODEX_HOME:-$HOME/.codex}"
destination_root="$codex_root/skills"

if [ "$skill" = "all" ]; then
  selected_skills="tg-product-ugc-video tg-amazon-listing-visual-builder"
else
  selected_skills="$skill"
fi

mkdir -p "$destination_root"

for skill_name in $selected_skills; do
  source_path="$source_root/$skill_name"
  destination_path="$destination_root/$skill_name"

  if [ ! -f "$source_path/SKILL.md" ]; then
    echo "Invalid skill source: $source_path" >&2
    exit 1
  fi

  if [ -e "$destination_path" ]; then
    if [ "$force" != "--force" ]; then
      echo "Skill already exists: $destination_path" >&2
      echo "Re-run with --force to replace it." >&2
      exit 1
    fi
    rm -rf "$destination_path"
  fi

  cp -R "$source_path" "$destination_path"
  echo "Installed $skill_name to $destination_path"
done

echo "Installation complete. Restart Codex or start a new task to reload the skill list."
