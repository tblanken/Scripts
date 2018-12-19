#!/bin/bash

# These are function examples

get_name() {
   echo "Tim"
}

get_address () {
   echo "123 Main Street"
}

echo "Your name is $(get_name)"
echo "Your address is $(get_address)"

get_city () {
   local mycity='Vancouver'
   echo $mycity
}

city=$(get_city)
echo $city

myfunc () {
   return 1
}

if myfunc; then
   echo "success"
else
   echo "failure"
fi
