#!/bin/bash

# example usage: ./getopts.sh -d, ./getopts.sh -dm, ./getopts.sh -m, ./getopts.sh -m -d
while getopts :dm option
do
	case $option in
		d) d_option=1
		;;
		m) m_option=1
		;;
		*) echo "usage: -dm"
	esac
done

# `` pass execution of command to variable
day=`date | awk '{print $1 " " $2}'`

if [ ! -z "$d_option" ]
then
	echo "day is: $day"
fi

month=`date | awk '{print $3}'`
if [ ! -z "$m_option" ]
then
	echo "Month is: $month"
fi

# $OPTIND points to argument index so we need to shift it
shift $(($OPTIND -1))
