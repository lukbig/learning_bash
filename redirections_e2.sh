#!/bin/bash

#The n<> file syntax opens the named file on file descriptor n for
#both input and output, without truncating
# it – sort of a combination of n< and n>

count=0

# opening file
exec 3<> wood.txt

while read line <&3
do
{
	echo "$line"
	(( count++ ))
}
done

# closing
exec 3>&-

echo "number of lines is $count"

