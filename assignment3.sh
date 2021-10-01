#!/bin/sh
minnum=1

if [ -z $1 ] || [ -z $2 ] || [ $1 -lt $minnum ] || [ $2 -lt $minnum ]
then
	echo "Please input 2 numbers between "$minnum" and "$maxnum
	exit 1
fi

for i in $(seq 1 $1)
do
	str=""
	for j in $(seq 1 $2)
	do		
		result=`expr $i \* $j`
		str=$str$i"*"$j"="$result" "		
	done
	echo $str
done
