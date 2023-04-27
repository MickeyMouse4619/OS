#!/bit/bash
echo -n "Enter the file name: "
read filename

if [ -e "$filename" ]
then
	echo "$filename found."
else
	echo "$filename not found."
	exit
fi

if [ -r "$filename" ]
then
	echo "$filename is readable."
else
	echo "$filename is not readable."
fi


if [ -w "$filename" ]
then
	echo "$filename is writeable."
else
	echo "$filename is not writeable."
fi

if [ -r "$filename" ] && [ -w "$filename" ]
then
	echo "$filename is both readable and writeable."
fi

