#!/bin/bash

#Generate random set of codes for lock.
rand1=$((RANDOM%10));
rand2=$((RANDOM%10));
rand3=$((RANDOM%10));
rand4=$((RANDOM%10));
rand5=$((RANDOM%10));

echo "Generated combination for lock: $rand1 $rand2 $rand3 $rand4 $rand5"
echo "Attempting to brute force lock."

#Loop to break lock if possible.
for i in `seq 1 10000`;
do
	b1=$((RANDOM%10));
	b2=$((RANDOM%10));
	b3=$((RANDOM%10));
	b4=$((RANDOM%10));
	b5=$((RANDOM%10));
	if [ "$b1" -eq "$rand1" -a "$b2" -eq "$rand2" -a "$b3" -eq "$rand3" -a "$b4" -eq "$rand4" -a "$b5" -eq "$rand5" ]
		then
		echo "Successfully broke lock: $rand1 $rand2 $rand3 $rand4 $rand5"
		echo "Broke in $i attempts."
		break
	fi
	if [ "$i" -eq 10000 ]
		then
		echo "Code was not broken."
	fi
done
exit