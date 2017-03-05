#!/bin/bash

# codes of keyboard's keyes
up=$'\x1b[A'
down=$'\x1b[B'
left=$'\x1b[D'
right=$'\x1b[C'

# -s does not echo input
# -n3 read only 3 chars
# -p prompt b4 input
read -s -n3 -p "Press an arrow key: " arrow

case "$arrow" in
	$up) echo "You pressed up";;
	$down) echo "You pressed down";;
	$left) echo "You pressed left";;
	$right) echo "You pressed right";;
esac
