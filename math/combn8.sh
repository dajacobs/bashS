echo "Which lock has a higher probability of not being hacked?"

currlock=$(echo "1/10^5" | bc -l)
echo "Probability for currlock: $currlock"

newlock=$(echo "1/100^3" | bc -l)
echo "Probability for newlock: $newlock"

echo "Therefore, the wise choice would be to use the newlock."