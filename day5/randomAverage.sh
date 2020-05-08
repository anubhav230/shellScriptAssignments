#!/bin/bash -x
val=0
for i in {1..5}
do
	val2=${RANDOM:0:2};
	sum=$(( $val + $val2 ));
	val=$sum
done
echo "sum =" $val
av=5
echo=$(( $val / $av ))
