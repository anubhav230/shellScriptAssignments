#!/bin/bash -x
count1=0
count2=0
count3=0
count4=0
count5=0
count6=0
min=20
function minimum() {
        if [ $min -gt $count2 ]
                        then

                                min=$count2
                                min2=2
                        fi
                        if [ $min -gt $count3 ]
                        then
                                min=$count3
                                min2=3
                        fi
                        if [ $min -gt $count4 ]
                        then
                                min=$count4
                                min2=4
                        fi
                        if [ $min -gt $count5 ]
                        then
                                min=$count5
                                min2=5

                        fi
                        if [ $min -gt $count6 ]
                        then
                                min=$count6
                                min2=6
                        fi
                        echo "$min2 is less $min"
}
declare -A arr
for ((i=1; i>0; i++))
do
        num=$((RANDOM%6 + 1))
        arr[$i]=$num
        if [ $num -eq 1 ]
        then
                count1=$(($count1 + 1))
                if [ $count1 -eq 10 ]
                then
                        echo "1 is $count1 times"
                        echo ${!arr[@]}
                        echo ${arr[@]}
                        minimum $min
                        exit
                fi
        fi
        if [ $num -eq 2 ]
        then
                count2=$(($count2 + 1))
                if [ $count2 -eq 10 ]
                then
                        echo "2 is $count2 times"
                        echo ${!arr[@]}
                        echo ${arr[@]}
                        minimum $min
                        exit
                fi
        fi
        if [ $num -eq 3 ]
        then
                count3=$(($count3 + 1))
                if [ $count3 -eq 10 ]
                then
                        echo "3 is $count3 times"
                        echo ${!arr[@]}
                        echo ${arr[@]}
                        minimum $min
                        exit
                fi
        fi
        if [ $num -eq 4 ]
        then
                count4=$(($count4 + 1))
                if [ $count4 -eq 10 ]
                then
                        echo "4 is $count4 times"
                        echo ${!arr[@]}
                        echo ${arr[@]}
                        minimum $min
                        exit
                fi

        fi
        if [ $num -eq 5 ]
        then
                count5=$(($count5 + 1))
                if [ $count5 -eq 10 ]
                then
                        echo "5 is $count5 times"
                        echo ${!arr[@]}
                        echo ${arr[@]}
                        minimum $min
                        exit
                fi
        fi
        if [ $num -eq 6 ]
        then
                count6=$(($count6 + 1))
                if [ $count6 -eq 10 ]
                then
                        echo "6 is $count6 times"
                        echo ${!arr[@]}
                        echo ${arr[@]}
                        minimum $min
                        exit
                fi
        fi



done
