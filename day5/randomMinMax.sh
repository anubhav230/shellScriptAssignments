#!/bin/bash -x
number1=${RANDOM:0:3}
number2=${RANDOM:0:3}
number3=${RANDOM:0:3}
number4=${RANDOM:0:3}
number5=${RANDOM:0:3}
min=999
max=0

#finding minimum value
if [ $min -gt $number1 ]
then
        min=$number1
fi
if [ $min -gt $number2 ]
then
        min=$number2
fi

if [ $min -gt $number3 ]
then
        min=$number3
fi

if [ $min -gt $number4 ]
then
        min=$number4
fi

if [ $min -gt $number5 ]
then
        min=$number5
fi

#finding maximum value

if [ $max -lt $number1 ]
then
        max=$number1
fi
if [ $max -lt $number2 ]
then
        max=$number2
fi

if [ $max -lt $number3 ]
then
        max=$number3
fi

if [ $max -lt $number4 ]
then
        max=$number4
fi

if [ $max -lt $number5 ]
then
        max=$number5
fi
echo "minimum value is $min"

echo "maximum value is $max"
