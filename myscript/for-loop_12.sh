#!/bin/bash

for i in 1 2 3 4 5
do
     	echo "Number is $i"
done 

for p in {1..20}
do
	echo "New Number is $p"
done

#Internal Field Separator = IFS read line by line using while loop

items="/home/ec2-user/myscript/case_9.sh"
while IFS= read -r item
do
    echo "$item"
done < "$items" #Take the input for this while loop from the file whose name is stored in $items.

#for_loop_with_argument

for arg in $@
do 
	echo "Argument is $arg "
done
