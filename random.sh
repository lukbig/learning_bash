#!/bin/bash

#generating 10 random number between 0 and 32767
MAX=10
i=1

while [ "$i" -le $MAX ]
do
	n=$RANDOM
	echo $n
	let "i += 1"
done
