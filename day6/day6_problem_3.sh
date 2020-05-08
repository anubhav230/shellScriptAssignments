#!/bin/bash -x
heads=0
tails=1
a=0
b=0

for (( i=1; i>0; i++ ))
do
coin=$((RANDOM%2))
        	if [ $coin -eq 0 ]
        	then
             		a=$(( $a + 1 ))
                	if [ $a -eq 11 ]
                	then
                        	echo "heads is 11 win"
                        	exit
                	fi
        	fi
        	if [ $coin -eq 1 ]
        	then
             b=$(( $b + 1 ))
                	if [ $b -eq 11 ]
                	then
                        	echo "tails is 11 win"
                        	exit
                	fi
        	fi
done
