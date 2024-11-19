#!/bin/bash
# Путь к каталогу (директории)
read -p "Введите путь к директории: " directory
# Установка владельца и группы
chown -R user1:lab_group "$directory"
# Установка прав доступа
find "$directory" -type f -exec chmod 764 {} \;
find "$directory" -type d -exec chmod 764 {} \;
echo "Права и владельцы обновлены для директории $directory."
