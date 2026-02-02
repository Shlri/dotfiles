#!/bin/bash

brightness=$(brightnessctl g)
max=$(brightnessctl m)
level=$((brightness * 100 / max))

echo "{\"level\": $level}"
