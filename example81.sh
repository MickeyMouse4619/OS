#!/bin/bash
echo "Enter n number of series:"
read n
fact=1
sum=0
i=1
while [ $i -le $n ]
do
	fact=$(($fact*$i))
	sum=$(echo $sum + $(echo $i/$fact | bc -l))
	i=$((i+1))
done
echo
echo $sum
total=0
total=$(echo "$total+$sum" | bc)
echo
echo "Total sum : "
echo $total
	
