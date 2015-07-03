# File system being searched.
path='/'

if  [ "$(whoami)" != "root" ]; then
	echo "Please please run again, with sudo command."
else
	echo "Total number of files that begin with lowercase 'a' to 'z'."
	find $path -type f -name '[a-z]*' -printf "%f\n" 2</dev/null | cut -c1 | sort |uniq -c
fi
exit 0