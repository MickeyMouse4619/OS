#!/bin/bash
echo "Enter the name of the file : "
read fileName
if [ -f $fileName ]
then
	echo "Enter 5 names : "
	for i in {1..5}
	do
		read name
		echo $name >> $fileName
	done
	
	sortedName=$(sort $fileName)
	
	echo
	echo "Unsorted Names : "
	cat $fileName
	echo
	echo "Sorted Names : "
	echo "$sortedName"
	echo
	echo "Quiting.............."
else
	echo "File doesn't exist"
fi
