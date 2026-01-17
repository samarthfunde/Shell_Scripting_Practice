#!/bin/bash

myarray=(1 2 4 Hello Hi)
length=${#myarray[*]}
	for ((i=0; i<$length; i++))
	do
		echo "Value of array is ${myarray[$i]}"
	done
