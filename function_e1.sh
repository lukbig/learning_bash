#!/bin/bash

#function_name()
#{
 #commands
#}

# function invoke
#function_name par1 par2 par3

function1() {
	echo "Calling \"function2\" from \"function1\"."
	function2
}

function2() {
	echo "Inside \"function2\"."
}

function1


# passing & getting parameters
function3() {
	echo "First argument is $1, second argument is $2"
}

function3 "hey" alpako
