#!/bin/bash
if [ $# -lt 1 ]; then
  echo "Использование: $0 <имя файла>"
  exit 1
fi
file=$1
# Проверка существования файла
if [ -e "$file" ]; then
  echo "Файл существует."
  if [ -d "$file" ]; then
    echo "Это директория."
  elif [ -f "$file" ]; then
    echo "Это обычный файл."
  fi
  echo "Права доступа: $(ls -l "$file" | awk '{print $1}')"
  echo "Размер файла: $(stat -c%s "$file") байт"
else
  echo "Файл $file не существует."
fi

