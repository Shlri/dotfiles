#!/bin/bash
WALLPAPER=$(swww query | grep -oP 'image: \K.*' | head -n1)

if [ -z "$WALLPAPER" ]; then
    echo "No wallpaper found"
    exit 1
fi

echo "$WALLPAPER"
