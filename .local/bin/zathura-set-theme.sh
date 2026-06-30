#!/usr/bin/bash

# Usage: zathura-set-theme.sh [light|dark]

ZATHURA_DIR="$HOME/.config/zathura"
THEME_PATH="$ZATHURA_DIR/theme"

THEME=$1
# Note: if the arg is either light nor dark, we can set a default to zathura.
# if [[ "$THEME" != "light" && "$THEME" != "dark" ]]; then
#     echo "Usage: $0 [light|dark]"
#     exit 1
# fi

case $THEME in
    light)
        TARGET="solarized_light"
        ;;
    dark)
        TARGET="solarized_dark"
        ;;
    *)
        TARGET="default_theme"
        ;;
esac

ln -sf "$ZATHURA_DIR/$TARGET" "$THEME_PATH"
