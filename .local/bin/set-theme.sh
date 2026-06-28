#!/usr/bin/bash

# Usage: set-theme.sh [light|dark]
THEME=$1

# 1. Basic validation
if [[ "$THEME" != "light" && "$THEME" != "dark" ]]; then
    echo "Usage: $0 [light|dark]"
    exit 1
fi

# 2. Define the scripts to run
SCRIPTS=(
    "vim-set-theme.sh"
    "zathura-set-theme.sh"
)

for script in "${SCRIPTS[@]}"; do
    if command -v "$script" >/dev/null 2>&1; then
        echo "Running $script..."
        "$script" "$THEME"
    else
        echo "Warning: Script '$script' not found in PATH. Skipping." >&2
    fi
done
