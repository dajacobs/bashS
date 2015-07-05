#!/bin/bash
# Create a temp variable to store outputs.
TMPFILE=/tmp/A_TEMPFILE
# Fill temp variable with initial empty string.
echo "" > ${A_TEMPFILE}
# Find and cut files starting from root and output to temp variable.
find / -type f -exec basename {} \; | cut -d\/ -f2 | cut -c1 > ${TMPFILE}
# Loop using a bucket list.	
for bucket in a b c d e f g h i j k l m n o p q r s t u v w x y z
# Get the lines of the file from the bucket list and temp variable.
do
	echo -n "bucket ${bucket}:"
	grep ${bucket} ${TMPFILE} | wc -l
done