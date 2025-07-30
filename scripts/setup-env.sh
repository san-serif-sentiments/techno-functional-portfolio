#!/bin/bash
set -euo pipefail

# scripts/setup-env.sh
# Deprecated helper that forwards to setup-environment.sh for
# compatibility with older documentation references.

DIR="$(dirname "$0")"
"${DIR}/setup-environment.sh"
