#!/bin/bash

n1=$(echo "1/(10*10*10*10*10)*100" | bc -l) # Percentage for first lock.
n2=$(echo "1/(100*100*100)*100" | bc -l) # Percentage for second lock.

echo "The probability of guessing the combination of first lock: $n1%."
echo "The probability of guessing the combination of second lock: $n2%."
echo "Via results, new lock is better."