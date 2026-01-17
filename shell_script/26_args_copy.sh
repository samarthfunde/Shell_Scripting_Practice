#!/bin/bash

echo " Your First word is: $1 "
echo " Your Second word is: $2 "
echo " Your All Arguments Numebr $# "
echo " Your Total Args Count $@ "
echo " Your Last Arg is ${!#} "

for i in $@
do
  echo "This is your Args: $i  "
done
