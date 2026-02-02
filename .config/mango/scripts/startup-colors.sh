#!/bin/bash
sleep 1

CURRENT_WALLPAPER=$(swww query | grep -oP 'image: \K.*' | head -n1)

if [ -n "$CURRENT_WALLPAPER" ] && [ -f "$CURRENT_WALLPAPER" ]; then
    echo "Found wallpaper: $CURRENT_WALLPAPER"
    
    matugen image "$CURRENT_WALLPAPER" \
        --mode dark \
        --type scheme-content \
        --contrast 0.0

    ~/.config/mango/scripts/reload-apps.sh
    
    echo "Colors generated from current wallpaper"
else
    echo "No current wallpaper found"
fi
