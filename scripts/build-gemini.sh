#!/usr/bin/env bash
# Compiles GEMINI.md context files for each plugin from their source SKILL.md files.
# Run this whenever skills are added or updated.
set -euo pipefail

REPO_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
EXTENSIONS_DIR="$REPO_ROOT/.gemini/extensions"

plugins=(
  people-management
  team-building
  design-strategy
  org-influence
  operating-cadence
  leadership-craft
)

echo "Building Gemini extension context files..."

for plugin in "${plugins[@]}"; do
  plugin_dir="$REPO_ROOT/$plugin"
  ext_dir="$EXTENSIONS_DIR/$plugin"
  [ -d "$plugin_dir/skills" ] || { echo "  Skipping $plugin"; continue; }
  mkdir -p "$ext_dir"
  output="$ext_dir/GEMINI.md"
  description=$(awk '/^# /{found=1; next} found && NF{print; exit}' "$plugin_dir/README.md" 2>/dev/null || true)
  {
    echo "# $plugin"
    [ -n "$description" ] && echo "" && echo "$description"
    echo ""
    echo "You are an expert assistant with the following skills available."
    echo "Apply whichever skills are relevant to the user's request."
    echo ""
  } > "$output"
  for skill_dir in $(find "$plugin_dir/skills" -mindepth 1 -maxdepth 1 -type d | sort); do
    [ -f "$skill_dir/SKILL.md" ] || continue
    { echo "---"; echo ""; cat "$skill_dir/SKILL.md"; echo ""; } >> "$output"
  done
done
echo "Done."
