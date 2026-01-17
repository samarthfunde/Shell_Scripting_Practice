#!/bin/bash

# $# = means number of arguments
if [[ $# -eq 0 ]]
then
	echo "Provide the argument no argument yet"
	exit 1
fi

echo "Hello Sam $1"
echo "Hii Everyone $2"
