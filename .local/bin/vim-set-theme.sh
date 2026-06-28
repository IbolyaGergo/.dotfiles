#!/usr/bin/bash

# Usage: vim-set-theme.sh [light|dark]

THEME=$1

if [[ "$THEME" != "light" && "$THEME" != "dark" ]]; then
    echo "Error: Argument must be 'light' or 'dark'"
    exit 1
fi

echo "set background=$THEME" > "$HOME/.vim/theme.vim"

# Iterate over each Vim server listed.
# We use 'while read' instead of a 'for' loop to ensure that if a server name
# contains spaces, it is treated as a single entry. A 'for' loop would incorrectly
# split names by whitespace, leading to errors.
while read -r server; do
    [[ -z "$server" ]] && continue

    vim --servername $server --remote-send ":set background=$THEME<CR>"
done <<< "$(vim --serverlist)"
