#!/bin/bash

echo "abc"
let "line = $LINENO - 1"
echo "echo abc is on line: $line"

trap 'echo "listing variables: m=$m, n = $n, o = $n"' exit

m=1
n=2
o=3

let "sum = $m + $n + $o"
echo "the sum is $sum"
