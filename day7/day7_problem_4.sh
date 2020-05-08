#!/bin/bash -x
read -p "Enter a number::" number
count=0
for (( i=2; number%i==0; ))
do
        factors[((count++))]=$i
        number=$(( $number/$i))
done

for (( i=3; i*i<=number; i++ ))
do
        for (( j=i; number%j==0; ))
        do
                factors[((count++))]=$i
                number=$(( $number/$j ))
        done
        ((i++))
done

if [ $number -gt 2 ]
then
        factors[((count++))]=$number
fi

echo ${factors[@]}
