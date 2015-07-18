#!/bin/bash
x=10000;
code1=3;
code2=5;
code3=9;
code4=8;
code5=4;

while (test ${x} -ne 0)
do
	randc1=$((RANDOM%10));
	randc2=$((RANDOM%10));
	randc3=$((RANDOM%10));
	randc4=$((RANDOM%10));
	randc5=$((RANDOM%10));
	if [ ${code1} -eq "$randc1" -a ${code2} -eq "$randc2" -a ${code3} -eq "$randc3" -a ${code4} -eq "$randc4" -a ${code5} -eq "$randc5" ]
		then
		echo "Broke lock in $x attempts."
		x=0;
	else
		x=$(($x-1))
		if [ $x -eq 0 ]
			then echo "Not found."
		fi
	fi
done