#!/bin/bash

# Determine theme based on hour (6 AM to 8 PM is light)
HOUR=$(date +%H)
if [ "$HOUR" -ge 6 ] && [ "$HOUR" -lt 20 ]; then
    THEME="light"
else
    THEME="dark"
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
