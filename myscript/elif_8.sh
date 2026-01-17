#!/bin/bash

read -p "Insert Your Marks: " marks

if [[ $marks -ge 80 ]]
then
	echo "First Division"
elif [[ $marks -ge 60 ]]
then
	echo "Second Division"
elif [[ $marks -lt 60 ]]
then 
	echo "You Have To Study More.."
fi
