#!/bin/bash -x
coun=0
b=0
for j in {1..10}
do
        num=${RANDOM:0:3}
        arr[((coun++))]=$num
done
echo "${arr[@]}"
IFS=$'\n' sorted=($(sort <<< "${arr[*]}")); unset IFS
echo "${sorted[@]}"
echo "second min number is ${sorted[1]}"
echo "second max number is ${sorted[8]}"
