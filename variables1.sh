#!/bin/bash

echo "process id of the script: $$"

for n in {0..5}
do
	# important curly brackets which are for block of the code
	# without them it will interprate first $BASH_VERSINFO AND THEN $n
	echo "BASH_VERSINFO[$n] = ${BASH_VERSINFO[$n]}"
done

someFunction()
{
	echo "function name is $FUNCNAME"
}

someFunction

echo "Outside the function, function name is $FUNCNAME"

if [[ $HOSTNAME && $USER && $HOME ]]
then
	echo "HOSTNAME: $HOSTNAME"
	echo "USER: $USER"
	echo "HOME: $HOME"
	echo "Variables are set"
else
	echo "Variables are not set"
fi

# exit status of pipe commands, in this example it will be exit status of cat wood.txt and sort
cat wood.txt | sort
echo ${PIPESTATUS[*]}

