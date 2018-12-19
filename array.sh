#!/bin/bash

Fruits=('Apple' 'Banana' 'Orange')

Vegetables[0]="Carrot"
Vegetables[1]="Brocolli"
Vegetables[2]="Squash"

echo ${Fruits[0]} # Displays element
echo ${Fruits[@]} # Diplays all elements
echo ${#Fruits[@]}  # Displays number of elements
echo ${#Fruits}  # Displays string length of first element
echo ${#Fruits[2]}  # Dispays string length of nth element
echo ${Fruits[@]:2:1}  # Displays range from position 2, length 1

Fruits=("${Fruits[@]}" "Watermelon") # Push
Fruits+=('Watermelon')  # Also push
Fruits=( ${Fruits[@]/Ap*/} ) # Remove regex match
unset Fruits[2] # Remove one item
Fruits=("${Fruits[@]}") # Duplicate
Fruits=("${Fruits[@]}" "${Vegetables[@]}")  # Concatenate
lines=(`cat "test.txt"`)  # Read from file

for i in "${Fruits[@]}"; do  # Loops through array and displays each element
   echo $i
done
