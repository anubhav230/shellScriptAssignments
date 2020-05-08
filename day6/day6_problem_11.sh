#!/bin/bash -x
read -p "Enter a number::" number

for (( i=2; number%i==0; ))
do
        echo "2"
        number=$(( $number/$i ))
done

for (( i=3; i*i<=number; i+2 ))
do
        for (( j=i; number%j==0; ))
        do
                echo $j
                number=$(( $number/$j ))
        done
done
if [ $number -gt 2 ]
then
        echo $number
fi
