#!/bin/bash

NO_OF_ARGS=2
E_BADARGS=85
E_UNREADABLE=86

# -ne not equal
if [ $# -ne "$NO_OF_ARGS" ]
then
	echo "usage: `basename $0` testFile1 testFile2"
exit $E_BADARGS
fi

# exclamation mark means logical not
if [[ ! -r "$1" || ! -r "$2" ]]
then
	echo "files are not real"
	exit "$E_UNREADABLE"
fi

# &> - shortcut of redirect stream, we do not want to print the output on the screen
# /dev/null - black hole of the uniks/linuks world
# cmp - compare two files byte by byte

cmp $1 $2 &> /dev/null

# $? - exit status of the last command, 0 means that execution ended just fine

if [ $? -eq 0 ]
then
	echo "Files are the same"
else
	echo "Files are not the same"
fi

exit 0
