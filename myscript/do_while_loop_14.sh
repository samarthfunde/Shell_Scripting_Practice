#!/bin/bash


read -p "Insert your count here: " count
num=10

while true
do
    if [[ $count -le $num ]];
    then
        echo "Value of count Variable is $count"
        ((count++))
        # exit the loop if count exceeds num
        if [[ $count -gt $num ]];
        then
            break
        fi
    else
        echo "Please insert a number less than or equal to 10"
        read -p "Insert your count here: " count
    fi
done

<<Comment

count=0
num=10

while [[ $count -le $num ]]
do 
	echo "Number is $count "
	((count++))
done
Comment
