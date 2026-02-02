#!/bin/bash

# Простая версия - показываем теги 1-9
# В будущем можно интегрировать с mmsg когда разберешься

echo '['
for i in {1..9}; do
  # По умолчанию все пустые
  active="false"
  occupied="false"
  
  # Тег 1 активен по умолчанию
  if [ $i -eq 1 ]; then
    active="true"
  fi
  
  echo -n "{\"id\": $i, \"active\": $active, \"occupied\": $occupied}"
  if [ $i -lt 9 ]; then echo -n ','; fi
done
echo ']'

# Если хочешь реальные данные от mango:
# mmsg -g 2>/dev/null | grep -o '"tags":\[.*\]' | jq '.tags' 2>/dev/null || echo '[]'
