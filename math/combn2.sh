# Old lock consists of a 5-digit password with each ranging from 0-9.
# New lock consists of a 3-digit password with each ranging from 0-99.
echo "Probability of guessing combination of old lock on first try is 1 in $((10**5))."
echo "Probability of guessing combination of new lock on first try is 1 in $((100**3))."