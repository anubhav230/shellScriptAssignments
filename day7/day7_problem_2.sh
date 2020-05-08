#!/bin/bash -x
counter=0
counter2=0
for ((i=1; i<=100; i++))
do
        array[((counter++))]=$i
        if [[ $i -eq 11 || $i -eq 22 || $i -eq 33 || $i -eq 44 || $i -eq 55 || $i -eq 66 || $i -eq 77 || $i -eq 88 || $i -eq 99 ]]
        then
                array2[((counter2++))]=$i
        fi
done
echo "Normal array is ${array[@]}"
