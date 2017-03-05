#!/bin/bash

# example of invoke: ./eval.sh firefox

# -z string     True if the length of string is zero.
if [ ! -z $1 ]
then
	process="ps -e | grep $1"
	echo $process
fi

# evaluating string
eval $process

# http://linuxcommand.org/lc3_man_pages/bash1.html
