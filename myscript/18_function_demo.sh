#!/bin/bash

# first program

function myfunc {
   echo "Hello"
}

# second programm

function mySec(){
  echo "Hello all"
}

# third programm

function myThird(){
  echo "Hi $1! "
}

# fourth programm

function countArgs() {
  echo "You passed $# arguments."
}

# fifth program

function myFourth(){
local num1=$1
local num2=$2
let sum=$num1+$num2
echo "Sum of $num1 & $num2 is $sum "
}


#Calling to functions

 myfunc
mySec
myThird Samarth
countArgs Hello How Are You?
myFourth 10 20  
