#!/bin/bash

echo -n "enter a letter or a digit: "
read a

case "$a" in
[[:lower:]] ) echo "$a is a lowercase letter";;
[[:upper:]] ) echo "$a is a uppercase letter";;
[0-9]	    ) echo "$a is a digit";;
*	    ) echo "$a is a special character";;
esac
