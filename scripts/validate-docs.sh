#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "📘 Sans Serif Sentiments – Markdown Validation Script"
echo "🔍 Validating markdown files and metadata..."
echo "Started at: $(date)"

CONFIG_FILE=".markdownlint.json"
REQUIRED_FIELDS=("title" "archetype" "owner" "status" "last_reviewed")

# Step 1: Run markdownlint
if ! command -v markdownlint-cli2 &> /dev/null; then
  echo "❌ markdownlint-cli2 not installed. Install it with:"
  echo "    npm install -g markdownlint-cli2"
  exit 1
fi

echo "✅ Running markdownlint-cli2..."
markdownlint-cli2 "**/*.md" --config "$CONFIG_FILE"

# Step 2: Check frontmatter metadata
echo "🔍 Validating frontmatter fields required by AGENTS.md..."

fail_count=0

while IFS= read -r -d '' file; do
  echo "🔎 Checking: $file"

  # Only check markdown files (skip AGENTS.md or README.md if exempted later)
  if [[ "$file" == *AGENTS.md ]]; then
    echo "ℹ️  Skipping AGENTS.md file"
    continue
  fi

  # Check for frontmatter block
  if ! grep -q "^---" "$file"; then
    echo "❌ $file is missing YAML frontmatter block"
    ((fail_count++))
    continue
  fi

  for field in "${REQUIRED_FIELDS[@]}"; do
    if ! grep -q "^$field:" "$file"; then
      echo "❌ $file is missing required field: $field"
      ((fail_count++))
    fi
  done
done < <(find . -type f -name "*.md" -print0)

# Step 3: Final result
if [[ $fail_count -gt 0 ]]; then
  echo "❌ Markdown validation failed: $fail_count issue(s) found."
  exit 1
else
  echo "✅ All markdown files passed AGENTS.md policy and linting."
fi

echo "📦 Validation complete at: $(date)"
