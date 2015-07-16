#!/bin/bash

# Current Lock
counter=5
probability=10

while [ $counter -gt 1 ]
do
	probability=$(( $probability * 10 ))
	counter=$(( $counter - 1 ))
done

echo "Current lock has a 1 in "$probability" probability of being cracked by a random person on first try."

# New Lock
counter=3
probability=100

while [[ $counter -gt 1 ]] 
do
	probability=$(( $probability * 100 ))
	counter=$(( $counter - 1 ))
done

echo "The new lock has a 1 in "$probability" probability of being cracked by a random person on first try."