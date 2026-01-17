#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
#THRESHOLD = ram limit  to set alert message

TH=500 #i set here limit of Ram

if [[ $FREE_SPACE -lt $TH ]]
then
	echo "Warning, Ram is running low"
else
	echo "Ram Space is sufficient - $FREE_SPACE "
fi
