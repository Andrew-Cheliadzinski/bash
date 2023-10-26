#!/bin/bash

# Получаем значения сторон треугольника из аргументов
side1=$1
side2=$2
side3=$3

# Проверяем условия и выводим соответствующий результат
if [ $side1 -eq $side2 ] && [ $side2 -eq $side3 ]; then
    echo "EQUILATERAL"
elif [ $side1 -eq $side2 ] || [ $side1 -eq $side3 ] || [ $side2 -eq $side3 ]; then
    echo "ISOSCELES"
else
    echo "SCALENE"
fi