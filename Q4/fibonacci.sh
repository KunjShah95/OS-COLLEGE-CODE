#!/bin/bash

echo "Enter a number: "
read number


a=0
b=1
echo "Fibonacci series up to $number:"
for (( i=0; i<number; i++ ))
do
  echo -n "$a " 
  fn=$((a + b)) 
  a=$b 
  b=$fn 
done
echo 