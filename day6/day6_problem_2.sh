#!/bin/bash -x
read -p "enter a number: " num
har=1
for (( i=2; i<=$num; i++ ))
do
	har=$(echo "scale=2; $har + (1/$i)"|bc)
done
echo $har
