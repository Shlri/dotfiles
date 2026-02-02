#!/bin/bash

# Простая версия
echo "1"

# Или если mmsg работает:
# mmsg -g 2>/dev/null | jq -r '.current_tag // 1' || echo "1"
