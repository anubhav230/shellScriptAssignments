#!/bin/bash -x

declare -A people
for((count=1;count<=50;count++))
do
	month=$((RANDOM%12+1))
	people["person_"$count]=$month
done
for i in ${!people[@]}
do
num=${people[$i]}
case $num in
	1)
		jan[ct1++]=$i
			;;
	 2)
                feb[ct2++]=$i
                        ;;
	 3)
                mar[ct3++]=$i
                        ;;
	 4)
                apr[ct4++]=$i
                        ;;
	 5)
                may[ct5++]=$i
                        ;;
	 6)
                jun[ct6++]=$i
                        ;;
	 7)
                jul[ct7++]=$i
                        ;;
	 8)
                aug[ct8++]=$i
                        ;;
	 9)
                sep[ct9++]=$i
                        ;;
	 10)
                auc[ct10++]=$i
                        ;;
	 11)
                nov[ct11++]=$i
                        ;;
	 12)
                dec[ct12++]=$i
                        ;;

esac
done
echo  -e "people born in jan" ${jan[@]}"\n"
echo  -e "people born in feb" ${feb[@]}"\n"
echo  -e "people born in mar" ${mar[@]}"\n"
echo  -e "people born in apr" ${apr[@]}"\n"
echo  -e "people born in may" ${may[@]}"\n"
echo  -e "people born in jun" ${jun[@]}"\n"
echo  -e "people born in jul" ${jul[@]}"\n"
echo  -e "people born in aug" ${aug[@]}"\n"
echo  -e "people born in sep" ${sep[@]}"\n"
echo  -e "people born in auc" ${auc[@]}"\n"
echo  -e "people born in nov" ${nov[@]}"\n"
echo  -e "people born in dec" ${dec[@]}"\n"
