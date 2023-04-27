#!/bit/bash
#Iteration the loop until a less than 10
echo "Executing script"

for SAMPLE in $@
do
	echo "The given sample is: $SAMPLE"
done
