#!/bin/bash -x
read -p "enter 1 for C to F    and    2 for F to C:  " choice
if [ $choice -eq 1 ]
then
        echo -n "Enter temperature (C) : "
        read tc
        tf=$(echo "scale=6;((9/5) * $tc) + 32" |bc)
        echo "$tc C = $tf F"
elif [ $choice -eq 2 ]
then
        echo -n "Enter temperature (F) : "
        read tf
        tc=$(echo "scale=6;(5/9)*($tf-32)"|bc)
        echo "$tf F = $tc C"
else
        echo "Please select 1 or 2 only"
        exit 1
fi
