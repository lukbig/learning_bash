#!/bin/bash

MIN=3

if [ -n "$1" ]
then
	echo "1st: $1"
fi

if [ -n "$2" ]
then
        echo "2nd: $2"
fi

if [ -n "$3" ]
then
        echo "3rd: $3"
fi

# if number of arguments is higher than 10
#if [ -n "${10}" ]
#then
#        echo "10th: ${10}"
#fi

# list of arguments
echo "List of arguments: "$*""
# script name
echo "name of script: \" "$0"\""
# number of arguments
if [ "$#" -lt $MIN ]
then
	echo "not enough input arguments"
fi
