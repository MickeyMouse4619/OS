#!/bin/bash
echo "Enter Student Name: "
read studentName

echo "Enter Student Register No.: "
read studentRegNo

echo "Enter Mark1: "
read mark1

echo "Enter Mark2: "
read mark2

echo "Enter Mark3: "
read mark3

echo "Enter Mark4: "
read mark4

if [ $mark1 -ge 50 ] && [ $mark2 -ge 50 ] && [ $mark3 -ge 50 ] && [ $mark4 -ge 50 ]
then
   echo
   echo "Student Name: $studentName"
   echo "Student Register No.: $studentRegNo"
   echo "Result: Pass"
else
   echo
   echo "Student Name: $studentName"
   echo "Student Register No.: $studentRegNo"
   echo "Result: Fail"
fi
