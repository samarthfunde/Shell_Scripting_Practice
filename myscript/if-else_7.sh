#!/bin/bash

read -p "Please Insert here your marks: " marks

if [[ $marks -ge 40 ]]
then
	echo "you are pass"
	exit 1
else
	echo "you are fail"
	exit 1
fi
