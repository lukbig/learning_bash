#!/bin/bash

declare -a colors

echo "your favourite colors separated by space: "
read -a colors

count=${#colors[@]}
i=0

while [ "$i" -lt "$count" ]
do
	echo "${colors[$i]}"
	#2 brackets needed, with one bracket in output is command not found
	(( i++ ))
done

echo "${colors[*]}"

#delete 3rd element of colors
unset colors[2]
echo "3rd element deleted, now array looks: ${colors[*]}"

echo "deleting colors"
unset colors
echo "${colors[*]}"

