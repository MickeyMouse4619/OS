#!/bin/bash

echo "Please enter student details:"
read -p "Name:" name
read -p "Register No.:" regno
read -p "Mark1:" m1
read -p "Mark2:" m2
read -p "Mark3:" m3
read -p "Mark4:" m4

echo

echo "---------------The Maharaja University Of Baroda-----------------"
echo "--------------Faculty of Technology and Engineering--------------"
echo
echo "           Result of $name having Register No:$regno             "
echo "-----------------------------------------------------------"
echo

if [ $m1 -ge 50 ]
then
  echo "Subject 1: Pass"
else
  echo "Subject 1: Fail"
fi

if [ $m2 -ge 50 ]
then
  echo "Subject 2: Pass"
else
  echo "Subject 2: Fail"
fi

if [ $m3 -ge 50 ]
then
  echo "Subject 3: Pass"
else
  echo "Subject 3: Fail"
fi

if [ $m4 -ge 50 ]
then
  echo "Subject 4: Pass"
else
  echo "Subject 4: Fail"
fi

