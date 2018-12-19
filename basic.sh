#!/bin/bash

NAME="Tim"
String=1

echo "This prints the variable contents of $NAME and then prints the variable name"
echo

# Simple If statement. -f asks if a file exists. -z asks if the lenght of a string is 0. -n asks if a string is not null  
echo "This indicates if there are contents of the variable or not"
if [ -z "$String" ]; then
   echo "String is empty"
elif [ -n "$String" ]; then
   echo "String is not empty"
fi
echo

# These print the same thing
echo $NAME
echo "$NAME"
echo "${NAME}!"
echo

# Both of these print I'm in and the working directory
echo "I'm in $(pwd)"
echo "I'm in `pwd`"
echo

# Substitution
echo "This displays examples of substitution."
echo ${NAME/T/t}  # This substitutes the uppercase T for a lowercase t
echo ${NAME:0:2}  # This displays only the first 2 characters of the variable string 
echo ${NAME::-1}  # This displays all but the last character of the variable string
echo ${NAME:-Cake} # This displays $NAME or Cake
