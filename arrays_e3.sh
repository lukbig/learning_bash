#!/bin/bash

FILE=wood.txt
declare -a array
array=( `cat "$FILE"` )
echo "${array[*]}"
size="${#array[*]}"
echo "size of array is: $size"

#bubble sort of array

swap() {
	local tmp=${Colors[$1]}
	Colors[$1]=${Colors[$2]}
	Colors[$2]=${tmp}
}

declare -a Colors

Colors=( red black blue white yellow )
size="${#Colors[@]}"

echo ${Colors[*]}

for (( last = $size - 1; last > 0; last-- ))
do
	for (( i = 0; i < last; i++ ))
	do
		[[ "${Colors[$i]}" > "${Colors[$((i+1))]}" ]] && swap $i $((i+1))
	done
done

echo ${Colors[@]}
