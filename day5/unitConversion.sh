#!/bin/bash -x
read -p "Please enter a number like 1,10,100,1000:: " number
case $number in
        1)
                echo "$number = unit"
                ;;
        10)
                echo "$number = hundred"
                ;;
        100)
                echo "$number = thousent"
                ;;
        1000)
                echo "$number = then thousent"
                ;;
        10000)
                echo "$number = one lakh"
                ;;
        100000)
                echo "$number = ten lakh"
                ;;
esac
