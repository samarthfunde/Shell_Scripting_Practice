#!/bin/bash

for i in 1 2 3 4 5 6 7 8 9 10
do
	let r=$i%2
	if [[ $r -eq 0 ]]
	then
	     exit 1
	fi
	echo "odd no is $i "
done

# lets see the another example


no=5

for i in 1 2 3 4 5 6 7 8 9 10
do
    if [[ $no -eq $i ]]
    then
        echo "$no is found"
        continue
    fi
    echo "Not found $i"
done

