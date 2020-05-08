#!/bin/bash -x
read -p "enter a number " num
function prime() {
        for ((i=2; i<=$num/2; i++))
        do
                if [ $((num%i)) -eq 0 ]
                then
                        echo "not a prime"
                        exit
                fi
done
echo "yes it is a prime number"
}

prime

s=0
rev=""
temp=$num
while [ $num -gt 0 ]
do
    s=$(( $num % 10 ))
    num=$(( $num / 10 ))
    rev=$( echo ${rev}${s} )
done
echo palindrome number is $rev
num=$rev
prime
