#!/bin/bash

# Получаем значения чисел из аргументов
number1=$1
number2=$2

# Выполняем арифметические операции
sum=$((number1 + number2))
product=$((number1 * number2))
quotient=$((number1 / number2))
difference=$((number1 - number2))

# Выводим результаты
echo "Сумма: $sum"
echo "Произведение: $product"
echo "Частное: $quotient"
echo "Разница: $difference"