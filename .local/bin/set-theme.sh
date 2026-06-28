#!/usr/bin/bash

# Usage: set-theme.sh [light|dark]
THEME=$1

# 1. Basic validation
if [[ "$THEME" != "light" && "$THEME" != "dark" ]]; then
    echo "Usage: $0 [light|dark]"
    exit 1
fi

BIN_DIR="$HOME/.local/bin"
# 2. Define the scripts to run
SCRIPTS=(
    "$BIN_DIR/vim-set-theme.sh"
    "$BIN_DIR/zathura-set-theme.sh"
)

for script in "${SCRIPTS[@]}"; do
    if [[ -x "$script" ]]; then
        echo "Running $script..."
        "$script" "$THEME"
    else
        echo "Warning: Script '$script' not found in PATH. Skipping." >&2
    fi
done
