#!/bin/bash

WALLPAPER="$1"

if [ -z "$WALLPAPER" ]; then
    echo "Usage: $0 <path-to-wallpaper>"
    exit 1
fi

if [ ! -f "$WALLPAPER" ]; then
    echo "Error: File $WALLPAPER not found"
    exit 1
fi

swww img "$WALLPAPER" \
    --transition-type wipe \
    --transition-fps 60 \
    --transition-step 90

sleep 0.5

matugen image "$WALLPAPER" \
    --mode dark \
    --type scheme-content \
    --contrast 0.0

echo "Wallpaper set and colors generated!"
