# Display message to user.
echo "Please wait while program counts all files on your system..."

# Find all the files while ignoring case and from 'a' to 'z'.
sudo find / -type f -iname '[a-z]*' |
# Reverse the file names found.
rev |
# Cut the file names using the '/' deliminater. 
cut -f1 -d"/" |
# Reverse the file name to original format.
rev |
# Cut the first character from the file names.
cut -c1 |
# Sort the output of file names.
sort |
# Show the unique occurrences by couting and ignoring the case.
uniq -i -c