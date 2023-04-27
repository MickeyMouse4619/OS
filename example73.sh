#!/bin/bash
echo "--------------------PGVCL------------------"
echo "Enter Your name : "
read name
echo "Enter your consumer number : "
read cnum
echo "Enter your moblie number"
read mnum
echo "Enter the number of units consumed :"
read units

if [ $units -lt 100 ]
then
	charge=`echo $units\*0.75 |bc`
elif [ $units -le 200 ]
then
	first_100=`echo 100\*0.75 |bc`
	runits=`echo $units-100 |bc`
	charge=`echo $first_100 + $runits\*1.5 |bc`	
else
	first_100=`echo 100\*0.75 |bc`
	next_100=`echo 100\*1.5 |bc`
	runits=`echo $units-200 |bc`
	charge=`echo $first_100 + $next_100 + $runits\*3 |bc`
fi

echo
echo "<-------------------Generating Bill---------------------->"
echo
echo "<-----------------BILL----------------->"
echo "Name :                           $name"
echo "Consumer Numbber :               $cnum"
echo "Moblie No :                      $mnum"
echo "The total electricity bil is Rs. $charge"

