#!/bit/bash
#Iteration the loop until a less than 10
a=10
while [ $a -gt 0 ]
do
	#print the values
	echo $a
	#increment the value
	a=`expr $a - 1`
done
