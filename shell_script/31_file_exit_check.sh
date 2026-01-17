#!/bin/bash

FILEPATH="/home/ec2-user/shell_script/names.txt"

if [[ -f $FILEPATH ]]
then
	echo "File exist"
else
	echo "File not exist"
        exit 1
fi
