#!/bin/bash

NO_OF_ARGS=2

E_NOARGS=84
E_BADARGS=85
E_UNREADABLE=86
E_NOFILE=87
E_SIZE=88

if [[ -z "$1" && -z "$2" ]]
then
	echo "no arguments specified"
	exit $E_NOARGS
fi

if [ "$#" -ne $NO_OF_ARGS ]
then
	echo "wrong number of arguments"
	echo "usage: `basename $0` file1 file2"
	exit $E_BADARGS
fi

if [[ ! -e "$1" || ! -e "$2" ]]
then
	echo "files do not exist"
	exit $E_NOFILE
elif [[ ! -f "$1" || ! -f "$2" ]]
then
	echo "files need to be regular files"
	exit $E_NOFILE
elif [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "no read permission"
	exit $E_UNREADABLE
elif [[ ! -s "$1" || ! -s "$2" ]]
then
	echo "files are zero size"
	exit $E_SIZE
fi

# show file1 and file2, then sort theirs content and redirect output to sorted_file.txt
cat $1 $2 | sort > sorted_file.txt

if [ "$?" -eq 0 ]
then
	echo "Execution of the script is successful"
	cat sorted_file.txt
else
	echo "Execution of the script failed"
fi
