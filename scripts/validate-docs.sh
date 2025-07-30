#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "📘 Sans Serif Sentiments – Markdown Validation Script"
echo "🔍 Validating markdown files and frontmatter metadata..."
echo "Started at: $(date)"

CONFIG_FILE=".markdownlint.json"
REQUIRED_FIELDS=("title" "archetype" "owner" "status" "last_reviewed")

# Step 1: Verify markdownlint-cli2 is locally installed
if ! [ -f "node_modules/.bin/markdownlint-cli2" ]; then
  echo "❌ markdownlint-cli2 is not installed locally. Please run: npm install"
  exit 1
fi

# Step 2: Run markdownlint using npx
echo "✅ Running markdownlint-cli2 (local)..."
npx markdownlint-cli2 "**/*.md" --config "$CONFIG_FILE"

# Step 3: Frontmatter validation (AGENTS.md policy)
echo "🔍 Checking required YAML frontmatter fields..."

fail_count=0

while IFS= read -r -d '' file; do
  echo "🔎 Inspecting: $file"

<<<<<<< HEAD
  filename=$(basename "$file")
  if [[ "$filename" == "README.md" || "$filename" == "AGENTS.md" ]]; then
    echo "ℹ️  Skipping policy-exempt file: $filename"
=======
  # Skip exempted files
  if [[ "$file" == *AGENTS.md ]]; then
    echo "ℹ️  Skipping AGENTS.md file"
>>>>>>> f7656bc37037150e6c54a2186a8db1985de6738e
    continue
  fi
  if [[ "$file" == *README.md ]]; then
    echo "ℹ️  Skipping README.md file"
    continue
  fi

<<<<<<< HEAD
  # Check presence of both --- delimiters
  if ! awk '/^---/{f++} END{exit f<2}' "$file"; then
    echo "❌ $file is missing or has incomplete YAML frontmatter block"
=======
  # Check YAML frontmatter block (start and end)
  if ! awk '/^---/{f++} END{exit f<2}' "$file"; then
    echo "❌ $file does not have a complete YAML frontmatter block"
>>>>>>> f7656bc37037150e6c54a2186a8db1985de6738e
    ((fail_count++))
    continue
  fi

  # Check all required fields
  for field in "${REQUIRED_FIELDS[@]}"; do
    if ! grep -E "^\s*$field\s*:" "$file" | grep -v '^#' &>/dev/null; then
<<<<<<< HEAD
      echo "❌ $file is missing required frontmatter field: $field"
=======
      echo "❌ $file is missing required field: $field"
>>>>>>> f7656bc37037150e6c54a2186a8db1985de6738e
      ((fail_count++))
    fi
  done

done < <(find . -type f -name "*.md" -print0)

# Step 4: Result Summary
if [[ $fail_count -gt 0 ]]; then
  echo "❌ Markdown validation failed: $fail_count issue(s) found."
  exit 1
else
  echo "✅ All Markdown files passed linting and metadata checks."
fi

echo "📦 Validation complete at: $(date)"
