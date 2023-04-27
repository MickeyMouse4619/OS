#!bin/bash
echo "Enter pattern you want to search :"
read pattern
echo "Enter file name you want to search : "
read file

echo

if [ -e $file ]
then
	if grep -w -n $pattern $file
	then
		echo "---Pattern Found---">output.txt
		cat output.txt
	else
		echo "Error ----Pattern Not Found---">output.txt
		cat output.txt
	fi
else
	echo "!!!!!Enter a valid filename.!!!!"
fi
