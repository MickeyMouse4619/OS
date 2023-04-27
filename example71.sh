#!/bin/bash
echo "Enter a file name : "
read file
if [ -e $file ]
then
	while true
	do
		echo " Please choose one of the following option:"
		echo "1. Enter Sentence in file"
		echo "2. Search a given string"
		echo "3. Quit"
		read choise
		case $choise in
		1)
			echo "Enter sentence : "
			read sentence
			echo "$sentence">>$file
			echo "Sentence Added Successfully";;
		2)
			echo "Enter string you want to search"
			read str
			result=$( grep -w $str $file)
			echo $result
			if [[ -z $result ]]
			then
				echo "Word not Found"
			else
				echo "Found"
			fi;;
		3)
			exit;;
		*)
			echo "Enter valid option like 1 2 3"
		esac
	done
			
else
	echo "404 File not Found"
fi

