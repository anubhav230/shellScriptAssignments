
#!/bin/bash -x
read -p "enter year" year;
if [ $year -gt 999 ] && [ $year -lt 9999 ]
then
        echo "valid year"
else
        echo "invalid year"
        exit
fi
if (( $year%4 == 0 && $year%100 != 0 )) || (( $year%400 == 0 ))
then
        echo "is leap year";
else
        echo "not a leap year";
fi
