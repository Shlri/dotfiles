#!/bin/bash

# Получаем заголовок активного окна через IPC mango
while true; do
  # Пробуем получить через mmsg
  title=$(mmsg -g 2>/dev/null | grep -o '"title":"[^"]*"' | cut -d'"' -f4)
  
  # Если пусто, выводим "MangoWC"
  if [ -z "$title" ]; then
    echo "MangoWC"
  else
    echo "$title"
  fi
  
  sleep 0.3
done
