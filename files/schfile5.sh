#!/bin/bash

# All the files on the system are put in a new file, minus the directory.
find / -type f -printf "%f\n" > ./tmp 2>/dev/null
# Gets the files of lowercase letters.
grep -E -e ^[[:lower:]] ./tmp > ./greptmp
rm tmp
# Removes all, but the first letter of each line.
cut -c -1 ./greptmp > ./cuttmp
rm ./greptmp
# Sorts the lines.
sort ./cuttmp > ./sorttmp
rm ./cuttmp
# Counts the unique duplicate lines for display.
uniq -c ./sorttmp > ./uniqtmp
rm ./sorttmp
# Print statement to terminal for user.
printf "The files starting with lowercase letters:\n"
# Contents of file are printed to terminal for user.
cat ./uniqtmp
rm ./uniqtmp