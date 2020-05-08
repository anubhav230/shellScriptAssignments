#!/bin/bash
read -p "Enter number for array size::" number
if [ $number -lt 3 ]
then
        echo "should enter min 3 number"
else
        sum=0
        for (( count=1; count<=number; count++ ))
        do
                read -p "Enter values::" value[$((count-1))]
        done
        for (( i=0;i<(number-2);i++ ))
        do
                for (( j=i+1;j<(number-1);j++ ))
                do
                        for ((k=j+1;k<(number);k++ ))
                        do
                                if [ $(( value[$i] + value[$j] + value[$k] )) -eq 0 ]
                                then
                                        ((sum++))
                                        echo ${value[$i]} ${value[$j]} ${value[$k]}
                                fi
                        done
                done
        done
        if [ $sum -eq 0 ]
        then
                echo "not exist"
        fi
fi
