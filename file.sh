#!/bin/bash

file=$1

if [ $file -e ]; then
   echo "The file exists"
fi

if [ $file -r ]; then
   echo "The file is readable"
fi

if [ $file -w ]; then
   echo "The file is writable"
fi

if [ $file -f ]; then
   echo "The file is a file"
fi

if [ -x $file ]; then
   echo "The file is executable"
elif [! -x $file ]; then
   echo "The file is not executable"
fi
