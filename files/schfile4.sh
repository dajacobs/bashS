# Find all files starting from root.
sudo find / -type f |
# Reverse the file names.
rev |
# Cut the file names using the delimiter '/'.
cut --delimiter='/' --fields=1 |
# Reverse the file names to original format.
rev |
# Cut the file names after first character.
cut --bytes=1 |
# Get all single file names from 'a' to 'z'.
grep [a-z] |
# Sort the file names.
sort -n |
# Show the unique occurrences of the file names while ignoring case.
uniq -c