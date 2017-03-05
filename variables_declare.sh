#!/bin/bash

y=8/2
echo "\$y = $y"

# with integer declaration, arithmetic operations can be conducted without let command
declare -i x
x=9/2
echo "\$x = $x"

# declaring array
declare -a array=(1 2 3 4 5)
for i in {0..4}
do
	echo "${array[$i]}"
done

#declaring function
declare -f someFunction
someFunction()
{
	echo "Inside $FUNCNAME"
}

someFunction
