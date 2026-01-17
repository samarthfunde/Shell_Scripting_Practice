#!/bin/bash

#1st Expression

mark1=50;
mark2=90;

if [[ $mark1 -gt 30 ]] && [[ $mark2 -lt 95 ]]
then 
	echo "Executed"
else
	echo "getting error"
fi

#2nd Expression

read -p "Enter Your Age: " age
read -p "Enter Your Name: " name

if [[ $age -gt 40 ]] && [[ $name == "India" ]]
#if [[ $age -gt 40 && $name == "India" ]]
then
	echo "You are adult"
else 
	echo "You are minor"
fi
