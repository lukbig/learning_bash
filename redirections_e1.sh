#!/bin/bash

#http://unix.stackexchange.com/questions/159513/what-are-the-shells-control-and-redirection-operators

file=wood.txt
# redirect std output - 1 to the file
echo "This line is sent to $file" 1>>$file

echo 12345 > fd.txt
# the file is open in read+write mode instead of read-only:
exec 3<>fd.txt
# read only 2 characters
read -n 2 <&3
# put . to std in
echo -n . >&3
# put from std in to stream and close
exec 3>&-
cat fd.txt
