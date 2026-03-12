#!/bin/bash
# My AI Kit — Installer
# Thin wrapper that delegates to the AI Kit Engine submodule.
# Edit the comment above to match your kit name.
set -euo pipefail
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
ENGINE="$SCRIPT_DIR/engine/install.sh"

if [ ! -f "$ENGINE" ]; then
    echo "Fetching installer engine..."
    git -C "$SCRIPT_DIR" submodule update --init --recursive 2>/dev/null
    if [ ! -f "$ENGINE" ]; then
        echo "Error: Could not fetch engine. Run: git submodule update --init"
        exit 1
    fi
fi

_ENGINE_TMP="$(mktemp)"
cp "$ENGINE" "$_ENGINE_TMP"
trap 'rm -f "$_ENGINE_TMP"' EXIT
git -C "$SCRIPT_DIR" submodule update --remote engine 2>/dev/null &
exec bash "$_ENGINE_TMP" --kit-dir "$SCRIPT_DIR" "$@"
