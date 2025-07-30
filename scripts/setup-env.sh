#!/bin/bash
set -euo pipefail

IFS=$'\n\t'

echo "🛠️  Sans Serif Sentiments – Setup Script"
echo "📦 Installing local project dependencies..."
echo "Started at: $(date)"

# Step 1: Check for Node.js
if ! command -v node &> /dev/null; then
  echo "❌ Node.js is not installed. Please install Node.js v18+ manually."
  exit 1
fi

# Step 2: Check if package.json exists
if [[ ! -f "package.json" ]]; then
  echo "📦 Initializing npm project..."
  npm init -y
fi

# Step 3: Install markdownlint-cli2
echo "📥 Installing markdownlint-cli2 as devDependency..."
npm install --save-dev markdownlint-cli2

# Step 4: Make validation script executable
chmod +x ./scripts/validate-docs.sh || true

echo "✅ Setup complete!"
echo "You can now run: ./scripts/validate-docs.sh"
=======

# scripts/setup-env.sh
# Deprecated helper that forwards to setup-environment.sh for
# compatibility with older documentation references.

DIR="$(dirname "$0")"
"${DIR}/setup-environment.sh"

