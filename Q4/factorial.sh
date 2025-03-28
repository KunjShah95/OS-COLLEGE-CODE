#!/bin/bash

echo "enter the number:"
# shellcheck disable=SC2162
read num

fact=1

for (( i=1; i<=num; i++ ))
do
  fact=$((fact * i))
done
echo "The factorial of $num is $fact"