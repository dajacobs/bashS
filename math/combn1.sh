# Old lock consists of a 5-digit password with each ranging from 0-9.
# New lock consists of a 3-digit password with each ranging from 0-99.
echo "scale=6;1/10^5" | bc
echo "scale=6;1/10^6" | bc