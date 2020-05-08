#!/bin/bash -x
read -p "please enter number: " num
fact=1
while [ $num -gt 1 ]
do
        fact=$((fact * num));
        num=$((num -1));
done
echo "factorial of $num is: " $fact
