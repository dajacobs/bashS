#!/bin/bash
TMPFILE=/tmp/A_TEMPFILE
echo "" > ${A_TEMPFILE}

find / -type f -exec basename {} \; | cut -d\/ -f2 | cut -c1 > ${TMPFILE}
	
for bucket in a b c d e f g h i j k l m n o p q r s t u v w x y z
do
	echo -n "bucket ${bucket}:"
	grep ${bucket} ${TMPFILE} | wc -l
done