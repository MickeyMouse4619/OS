#!/bit/bash
#Iteration the loop until a less than 10
a=0
while [ $a -lt 10 ]
do
	#print the values
	echo $a
	#increment the value
	a=`expr $a + 1`
done
