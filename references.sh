#!/bin/bash

var1=1
var2=2

{
var1=11
var2=12
}

(
var1=21
var2=22
let var3=$var1+$var2
echo $var3
)

echo "$var1	$var2	$var3"
