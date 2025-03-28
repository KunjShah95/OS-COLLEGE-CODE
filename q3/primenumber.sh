#!/bin/bash

echo "how many prime numbers do you want?"
read total

count=0
num=2

echo "First $total prime numbers are: "

while [ $count -lt $total ]; do
    is_prime=true
    
    for (( i=2; i*i<=num; i++ )); do
        if (( num % i == 0 )); then
            is_prime=false
            break
        fi
    done
    
    if $is_prime; then
        echo $num
        count=$((count + 1))
    fi
    
    num=$((num + 1))
done