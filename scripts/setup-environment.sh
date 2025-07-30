#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

# scripts/setup-environment.sh
# Install required tooling for documentation validation.

echo "📦 Installing markdownlint-cli2..."
npm install --no-audit --no-fund --save-dev markdownlint-cli2
echo "✅ Environment setup complete."
