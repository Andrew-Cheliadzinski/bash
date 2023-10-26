#!/bin/bash

# Получаем входную строку из аргумента
input_string=$1

# Инициализируем переменные для обратной строки и строки с поменянным регистром
reversed_string=""
swapped_case_string=""

# Перебираем каждый символ во входной строке
for (( i=${#input_string}-1; i>=0; i-- )); do
    # Получаем текущий символ
    char="${input_string:i:1}"
    
    # Добавляем обратный символ в обратную строку
    reversed_string="$reversed_string$char"
    
    # Меняем регистр символа и добавляем его в строку с поменянным регистром
    if [[ $char == [[:upper:]] ]]; then
        swapped_case_string="$swapped_case_string${char,,}"
    elif [[ $char == [[:lower:]] ]]; then
        swapped_case_string="$swapped_case_string${char^^}"
    else
        swapped_case_string="$swapped_case_string$char"
    fi
done

# Выводим обратную строку и строку с поменянным регистром
echo "Обратная строка: $reversed_string"
echo "Строка с поменянным регистром: $swapped_case_string"