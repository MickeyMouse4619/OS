#!/bin/bash


while [ 1 ]
do
  echo "1. Convert all capital letters to small case letters" 
  echo "2. Convert all small case letters to capital letters"
  echo "3. Exit"
  echo -n "Please enter your choice: "
  read choice
  
  case $choice in
    1) echo "Enter desired file name:"
       read fname
       echo "Enter file name where data to be stored:"
       read file
       cat $fname | tr '[A-Z]' '[a-z]' >  $file
       cat $file
       echo
       
       ;;
    2) echo "Enter desired file name:"
       read fname
      echo "Enter file name where data to be stored:"
       read file2
       cat $fname | tr '[a-z]' '[A-Z]' > $file2
       cat $file2
      echo
       ;;
    3) exit 1
       ;;
    *) echo "Error: Invalid option"
       ;;
  esac
done
