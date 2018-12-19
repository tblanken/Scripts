#!/bin/bash

$name="10"

# For loop example
for i in {1..10}; do
   echo "$i"
done

# While loop example
COUNTER=0
while [ $COUNTER -lt 10 ]; do
   echo "The counter is $COUNTER"
   let COUNTER=COUNTER+1
done

# Until loop example
COUNTER=20
until [ $COUNTER -lt 10 ]; do
   echo COUNTER $COUNTER
   let COUNTER-=1
done
