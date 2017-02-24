#!/bin/bash

let "y=((x=20, 10/2))"

echo $y
echo $x

#lower case conversion
var=DSLConnEctIoN
echo ${var,,}

#dzielenie
let val=500/2
echo $val


#przypisanie wartosci w nietypowy sposob
val2=`echo $val`
echo $val2

#sprawdzanie warunek z exclamation mark
var1=10
if [ "$var1" != 0 ]
then
	echo "NOPE"
else
	echo "YEP"
fi


#mnozenie i potegowanie
let var2=100*10
let var3=100**3
echo "$var2	$var3"

#uzycie ? w przypisaniu wartosci
var4=10
echo $(( var5=var4<20?1:0 ))

#uzycie {}
echo {0..9}
