#!/bin/bash

#reading values from console input
#echo "type in some value"
#read var2
#echo $var2

#difference between echoes variables with quotation marks and without them
var1="t tr  afga s   sfga"
echo "print var without qutation marks"
echo $var1
echo "print var with quotation marks"
echo "$var1"

#different declarations of strings
var3="test1 test2 test3"
echo $var3
var4=test1\ test2\ test3
echo $var4

#correct variable declaration
var5=
echo "value of var5: $var5"
var6=11 var7=22
echo "var6: $var6, var7: $var7"
var8=`echo "hi"` #back quotation mark, inside them it can be linux commands which output sth
echo $var8
#var9=$(ls -la)
#echo $var9

#REPLACEMENT
var10=1100
var11=${var10/11/B}
echo "var10: $var10"
echo "11 is replaced by B: $var11"
