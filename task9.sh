#!/bin/bash

score=0

echo "Question 1: What is the capital of France?"
echo "a) Paris b) London c) Rome d) Berlin"
read -p "Your answer: " ans
[ "$ans" == "a" ] && ((score++))

echo "Question 2: 2+2 = ?"
echo "a) 3 b) 4 c) 5 d) 6"
read -p "Your answer: " ans
[ "$ans" == "b" ] && ((score++))

echo "Question 3: What is the color of the sky?"
echo "a) Green b) Red c) Blue d) Yellow"
read -p "Your answer: " ans
[ "$ans" == "c" ] && ((score++))

echo "You scored $score out of 3."
