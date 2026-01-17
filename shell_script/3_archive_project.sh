#!/bin/bash
#$Revision:001$ = means i am creating first time so i give the 001 for second time 002..............
#$Thu Sept 13:08:52 IST 2025$ = Date When created script

# Variables
WORKDIR=/home/ec2-user/shell_script/find_command
DAYS=10
DEPTH=1
RUN=0

# Check if the directory exists
if [ ! -d "$WORKDIR" ]; then
    echo "Directory does not exist: $WORKDIR"
    exit 1
fi

# Create 'archive' folder if not present
if [ ! -d "$WORKDIR/archive" ]; then
    /bin/mkdir "$WORKDIR/archive"
fi

# Find files larger than 20MB
for i in $(/usr/bin/find "$WORKDIR" -maxdepth $DEPTH -type f -size +20M); do
    if [ $RUN -eq 0 ]; then
        echo "[$(/bin/date "+%Y-%m-%d %H:%M:%S")] archiving $i ==> $WORKDIR/archive"
        /bin/gzip "$i" || exit 1
        /bin/mv "$i.gz" "$WORKDIR/archive" || exit 1
    fi
done
