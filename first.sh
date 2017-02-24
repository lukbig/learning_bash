#!/bin/bash

name=tea

echo "The word $name contains ${#name} chars"
echo $(( 2#111 ))

var1=10;
if [ "$var1" -gt 0 ]
then
echo "var1 gt 0";
else
echo "var1 lt 0";
fi

colors="red black white"

#will iterate with each value
for col in $colors
do
echo $col
done

#will print all values in 1 line
for col in "$colors"
do
echo $col
done

#will pring $colors
for col in '$colors'
do
echo $col
done

#declaring array and iterating array
Colors=( white blue yellow )
for col in ${Colors[@]}
do
if [ "$col" == 'white' ]
then
        echo "Colors contain white"
fi
echo $col
done

#multiple conditions
var2=1
if [ "$var2" -gt 0 ] && [ "$var2" -lt 10 ]
then
	echo "multiple conditions: true"
else
	echo "multiple condiditions: false"
fi

