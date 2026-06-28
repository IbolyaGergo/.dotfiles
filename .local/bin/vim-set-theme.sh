#!/usr/bin/bash

# Usage: vim-set-theme.sh [light|dark]

THEME=$1

if [[ "$THEME" != "light" && "$THEME" != "dark" ]]; then
    echo "Error: Argument must be 'light' or 'dark'"
    exit 1
fi

echo "set background=$THEME" > "$HOME/.vim/theme.vim"
