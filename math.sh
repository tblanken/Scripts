#!/bin/bash

num=10
num2=20

#if [ $num = $num2 ]; then  # Test for equal value
#   echo "Value is the same"
#elif [ $num != $num2 ]; then  # Test for not equal value
#   echo "Value is not the same"

echo $((num + 20))  # Adds the value of num and 20
echo $((RANDOM%=200))  # Generates a random number between 1 and 200
