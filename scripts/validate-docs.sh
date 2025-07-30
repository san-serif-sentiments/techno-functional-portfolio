#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

echo "🔍 Validating markdown files..."

# Lint markdown files
markdownlint-cli2 "**/*.md" --config .markdownlint.json

echo "✅ Markdown validation complete."
