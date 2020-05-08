#!/bin/bash
echo "Please enter three number::"
read a
read b
read c
min=1000000000
max=0
i=$(($c + $a / $b ))
echo "result $i"
j=$(( $a + $b * $c ))
echo "result $j"
k=$(( $a / $b + $c ))
echo "result $k"
l=$(( $a *$b + $c ))
echo "result $l"
if (( $i<$min ))
then
	min=$i
fi
if (( $min > $j ))
then
	min=$j
fi
if (( $min > $k ))
then
	min=$k
fi
if (( $min > $l ))
then
	min=$l
fi


echo "minimum = $min"



if (( $i>$max ))
then
        max=$i
fi
if (( $max < $j ))
then
        max=$j
fi
if (( $max < $k ))
then
        max=$k
fi
if (( $max < $l ))
then
        max=$l
fi
echo "minimum = $min"
echo "maximum = $max"
