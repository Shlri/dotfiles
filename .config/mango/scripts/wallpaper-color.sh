#!/bin/bash

WALLPAPER_PATH="$1"

if [ -z "$WALLPAPER_PATH" ]; then
    echo "Usage: $0 <path-to-wallpaper>"
    exit 1
fi

# Генерируем цветовую схему из обоев
matugen image "$WALLPAPER_PATH" \
    --mode dark \
    --type scheme-content \
    --contrast 0.0

mangoctl reload
