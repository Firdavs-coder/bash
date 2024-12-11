#!/bin/bash

add() { echo "Result: $(($1 + $2))"; }
subtract() { echo "Result: $(($1 - $2))"; }
multiply() { echo "Result: $(($1 * $2))"; }
divide() { echo "Result: $(($1 / $2))"; }

echo "Choose an operation: 1) Add 2) Subtract 3) Multiply 4) Divide"
read -p "Enter your choice: " choice
read -p "Enter the first number: " num1
read -p "Enter the second number: " num2

case $choice in
  1) add $num1 $num2 ;;
  2) subtract $num1 $num2 ;;
  3) multiply $num1 $num2 ;;
  4) divide $num1 $num2 ;;
  *) echo "Invalid choice" ;;
esac
