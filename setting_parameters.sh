#!/bin/bash

echo "before setting parameters"
echo "\$1 = $1"
echo "\$2 = $2"

set `echo "three four"`

echo "after setting parameters"
echo "\$1 = $1"
echo "\$2 = $2"

# unsetting parameters
set --

var="1 2 3"
echo $var
# setting positional parameters
set -- $var
i=1
while [ "$i" -le $# ]
do
	echo -n "\$$i = "
	eval echo \$$i
	(( i++ ))
done

set --
echo "after set --, parameters are unset \$1 = $1, \$2 = $2, \$3 = $3"
