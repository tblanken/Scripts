#!/bin/bash

num=10
num2=20

if [ $num = $num2 ]; then  # Test for equal value
   echo "Value is the same"
elif [ $num != $num2 ]; then  # Test for not equal value
   echo "Value is not the same"
fi

string="0"

if [ -z $string ]; then
   echo "The string is empty"
elif [ -n $string ]; then
   echo "The string is not empty"
fi

numA=11
numB=21

# Equal to
if [ $numA -eq $numB ]; then
   echo "The values both match"
fi

# Not equal to
if [ $numA -ne $numB ]; then
   echo "The values don't match"
fi

# Less than or equal to
if [ $numA -le $numB ]; then
   echo "$numA is less than or equal to $numB"
fi

# Less than
if [ $numA -lt $numB ]; then
   echo "$numA is less than $numB"
fi

# Greater than
if [ $numB -gt $numA ]; then
   echo "$numB is greater than $numA"
fi

# Greater than or equal to
if [ $numB -ge $numA ]; then
   echo "$numB is greater then or equal to $numA"
fi 

# NOT
if [ $numA !=  $numB ]; then
   echo "not"
fi

# AND
if [ $numA = 10 ] && [ $numB = 20 ] ; then
   echo "numA is equal to $numA and numB is equal to $numB"
fi

# OR
if [ $numA = 10 ] || [ $numB = 20 ]; then
   echo "One of the values of numA or numB match"
elif [ $numA != 10 ] || [ $numB != 20 ]; then 
   echo "One of the values of numA or numB do not match"
fi
