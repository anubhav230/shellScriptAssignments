#!/bin/bash -x
read -p "Please enter number= " number
function palindrom () {
        local word=$1
        local len=$((${#word} - 1))
        local i
        for ((i=0; i<= (len/2); i++))
        do
                [[ ${word:i:1} == ${word:len-i:1} ]] || return 1
        done
        return 0
}
for word in $number
do
        if palindrom $word
        then
        echo "is palindrom"
        else
        echo "not palindrom"
        fi
done
