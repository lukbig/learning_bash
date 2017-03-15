#!/bin/bash

E_BADARGS=65

# && - and list, || - or list
if [ ! -z "$1" ] && echo "first parameter is $1" && [ ! -z "$2" ] && echo "second parameters is $2"
then
	echo "two parameters are passed to the script"
else
	echo "usage: `basename $0` arg1 arg2" && exit $E_BADARGS
fi
