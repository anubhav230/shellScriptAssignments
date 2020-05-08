#!/bin/bash -x
read -p "enter frist number: " num
read -p "enter second number" num2
flag=0
i=2
while [ $num -ne $num2 ]
do
        temp=`echo $num`
        while [ $temp -ne $i ]
        do
                temp=`expr $temp - 1`
                n=`expr $num % $temp`
                if [ $n -eq 0 -a $flag -eq 0 ]
                then
                        flag=1
                fi
        done
if [ $flag -eq 0 ]
        then
                echo $num
        else
                flag=0
        fi
        num=`expr $num + 1`
done
