#!/bin/bash

echo "Hey choose an option"
echo "a = to see the current date"
echo "b= list all the files in current dir"

read choice 

case $choice in
	a)date;;
	b)ls;;
	*) "Non valid input.... Please select a or b"
esac
