#!/bin/bash

capacity=$(cat /sys/class/power_supply/BAT*/capacity 2>/dev/null || echo "100")
status=$(cat /sys/class/power_supply/BAT*/status 2>/dev/null || echo "Unknown")

echo "{\"capacity\": $capacity, \"status\": \"$status\"}"
