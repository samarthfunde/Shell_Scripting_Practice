#!/bin/bash

#monitoring the free fs space disk
FU=$(df -h | egrep -v "Filesystem|tmpfs" | grep "xvda128" | awk '{print $5}' | tr -d %)
TO="cloudops40@gmail.com"

if [[ $FU -ge 10 ]]
then
        echo "Warning, disk space is low - $FU %" | /usr/bin/mail -s "Disk Space ALERT!" $TO
else
        echo "All good"
fi
