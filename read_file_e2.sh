#!/bin/bash

echo "read file"

while read var
do
	echo "$var"
done < wood.txt
