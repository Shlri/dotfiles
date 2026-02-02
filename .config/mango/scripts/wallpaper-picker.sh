#!/bin/bash

WALLPAPER_DIR="$HOME/wallpapers"

if [ ! -d "$WALLPAPER_DIR" ]; then
    notify-send "Error" "Wallpaper directory not found: $WALLPAPER_DIR"
    exit 1
fi

SELECTED=$(ls -1 "$WALLPAPER_DIR" | fuzzel --dmenu --prompt "Wallpaper: ")

if [ -n "$SELECTED" ]; then
    WALLPAPER_PATH="$WALLPAPER_DIR/$SELECTED"
    
    swww img "$WALLPAPER_PATH" \
        --transition-type wipe \
        --transition-fps 60 \
        --transition-step 90
    
    matugen image "$WALLPAPER_PATH" \
        --mode dark \
        --type scheme-content \
        --contrast 0.0
    
    notify-send "Wallpaper changed" "$SELECTED" -i "$WALLPAPER_PATH" -t 2000
    
    ~/.config/mango/scripts/reload-apps.sh
fi
