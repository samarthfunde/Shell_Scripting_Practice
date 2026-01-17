#!/bin/bash

myfun() {
    local num1=$1   # store first argument
    local num2=$2   # store second argument
    local sum=$((num1 + num2))  # arithmetic
    echo "Sum of $num1 and $num2 is $sum"
}

myfun 10 20

