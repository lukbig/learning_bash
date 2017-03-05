#!/bin/bash

# prompt string tree
PS3="Pick a color: "

select color in "brown" "grey" "black" "orange" "red"
do
	echo "you selected this color: $color"
	break
done
