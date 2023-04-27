#!/bin/bash
echo "Welcome to the file manager application"
echo " Please choose one of the following option:"
echo "1. copy file"
echo "2. edit file"
echo "3. rename file"
echo "4. delete file"

read choice

if [ $choice -eq 1 ]
then
	echo "Please Enter a file name you want to copy : "
	read filename
	echo "please enter a destination file"
	read destfilename
	cp $filename $destfilename
	echo "----Operation Done ----"
elif [ $choice -eq 2 ]
then
	echo "Enter filename you want to edit:"
	read efile
	vi $efile
	echo "---edit Done---"
elif [ $choice -eq 3 ]
then 
	echo "Please Enter a filename you want to rename : "
	read rfile
	echo "name you want to give "
	read nfile
	mv $rfile $nfile
	echo "----Opration Done ----"
elif [ $choice -eq 4 ]
then
	echo "Please Enter filename you want to delete : "
	read dfile
	rm $dfile
	echo "File deleted..."
else
	echo "Please Enter Correct choice"
fi
