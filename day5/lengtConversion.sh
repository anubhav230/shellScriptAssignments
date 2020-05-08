#!/bin/bash -x
read -p "Enter (1: Feet to Inch),(2: Inch to Feet),(3: Feet to Meter),(4: Meter to Feet)" number
read -p "Enter number" num
case $number in
	1)
		res=$(echo "scale=3; $num * 12;" | bc)
		echo "$num Feet = $res Inch"
		;;
	2)
		res1=$(echo "scale=3; $num / 12;" | bc)
		echo "$num Inch = $res1 Feet"
		;;
	3)
		res3=$(echo "scale=3; $num * 0.30;" | bc)
		echo "$num Feet = $res3 Meter"
		;;
	4)
		res4=$(echo "scale=3; $num * 3.28;" | bc)
		echo "$num Meter = $res4 Feet"
		;;
esac

