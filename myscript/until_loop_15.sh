#/bin/bash

#An until loop is the opposite of a while loop.
#while → runs as long as condition is true
#until → runs as long as condition is false

count=1
until [[ $count -gt 5 ]]
do
	echo "Number is $count "
	((count++))
done
