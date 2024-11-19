#!/bin/bash
# Для указания исходной директорию и место для сохранения
read -p "Введите путь к директории для резервного копирования: " source_dir
read -p "Введите путь для сохранения архива: " backup_dir
# Создание имени архива с текущей датой
date_suffix=$(date +%Y-%m-%d)
archive_name="backup_${date_suffix}.tar.gz"
# Архивирование
tar -czf "$backup_dir/$archive_name" "$source_dir"
echo "Резервная копия создана: $backup_dir/$archive_name"
