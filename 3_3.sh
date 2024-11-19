#!/bin/bash
if [ $# -lt 1 ]; then
  echo "Использование: $0 <имя файла>"
  exit 1
fi
input_file=$1
output_file="${input_file}_sorted"
# Для проверка существования файла
if [ -f "$input_file" ]; then
  sort "$input_file" > "$output_file"
  echo "Содержимое файла отсортировано и сохранено в $output_file"
else
  echo "Файл $input_file не существует."
  exit 1
fi

