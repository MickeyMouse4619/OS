#!/bin/bash

echo "Enter  filename having data of country state and city: "
read file
if [ -e "$file" ] 
then
     echo
     echo "-----------Unsorted---------"
      cat $file
     echo
     echo "*************Sorted*********"
     sort -k3,3 -k2,2  $file
   else 
       echo "File Not Found"    
 fi 
