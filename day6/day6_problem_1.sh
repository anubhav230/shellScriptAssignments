#!/bin/bash -x
read -p "enter a number: " num
j=2
for (( i=1; i<$num; i++ ))
do  
        		res=$(( $j * 2 ))
        		j=res
done
echo "result for 2^$num is= $res"
