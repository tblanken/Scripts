#!/bin/bash

String=1

# Simple If statement. -f asks if a file exists. -z asks if the lenght of a string is 0. -n asks if a string is not null  
echo "This is an example of an If statement. This indicates if there are contents of the variable or not"
if [ -z "$String" ]; then
   echo "String is empty"
elif [ -n "$String" ]; then
   echo "String is not empty"
fi
echo
