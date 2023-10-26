#!/bin/bash

# Получаем путь к файлу из аргумента
file_path=$1

# Получаем размер файла
file_size=$(stat -c %s "$file_path")

# Проверяем размер файла и выводим соответствующий результат
if [ $file_size -le 1024 ]; then
    echo "ОК"
else
    echo "FAIL"
fi