#!/bin/bash

# example of invoke:	./grep_e1.sh wo.d	and it will find wood and word

E_NOPATTERN=71
DICT=/usr/share/dict/words

if [ -z "$1" ]
then
	echo
	echo "Usage: "
	echo "`basename $0` \"pattern,\""
	echo "where \"pattern\" is in the form"
	echo "ooo..oo.o..."
	echo "The o's are letters you already know,"
	echo "and the periods are missing letters."
	echo "Letters and periods can be in any position"
	echo "For example: w...i....n"
	echo
	exit $E_NOPATTERN
fi

# ^ - means beginning of the line
# $ - means end of the line
# f.e. 		^"$1"$
# grep searches the pattern in DICT VARIABLE
grep ^"$1"$ "$DICT"	
