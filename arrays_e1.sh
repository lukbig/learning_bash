#!/bin/bash

#declaring simple array
array[0]=20
array[1]=2
#curly brackets needed in order to print out elements instead of printing: 20[0], 20[1]
echo "${array[0]}, ${array[1]}"
echo "${array[*]}"

#declaring array with declare -a
declare -a array1
array1=( 1 5 7 9 )

#other way of declaring array
array2=([0]=first [1]="second" [7]=45 )
echo -e "${array2[0]}, ${array2[1]}, ${array2[7]}"
#printing size of first element
echo "size of array2's first element: ${#array2[0]}"
echo "size of array2: ${#array2[*]}"

#printing elements of array
array3=something123
echo "printing elements of string array: something123"
echo "${array3[*]}"
echo "${array3[0]}"
echo "${array3[1]}"
echo "${#array3[@]}"
