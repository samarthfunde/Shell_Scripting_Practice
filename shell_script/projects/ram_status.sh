#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
#THRESHOLD = kitne memory se kam hone ke badd alert milna chahiye we set a>

TH=400 #i set here limit of Ram

if [[ $FREE_SPACE -lt $TH ]]
then
        echo "Warning, Ram is running low"
else
        echo "Ram Space is sufficient - $FREE_SPACE M"
fi
