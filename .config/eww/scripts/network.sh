#!/bin/bash

# Проверяем подключение
if ping -c 1 8.8.8.8 &>/dev/null; then
  # Проверяем тип подключения
  if iwgetid &>/dev/null; then
    ssid=$(iwgetid -r)
    echo "{\"connected\": true, \"type\": \"wifi\", \"ssid\": \"$ssid\"}"
  else
    echo "{\"connected\": true, \"type\": \"ethernet\", \"ssid\": \"\"}"
  fi
else
  echo "{\"connected\": false, \"type\": \"\", \"ssid\": \"\"}"
fi
