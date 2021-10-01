#!/bin/sh

if [ -z $1 ] || [ -z $2 ] || [ $1 -lt 0 ] || [ $2 -lt 0 ]
then
	echo "Please input 2 positive numbers"
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
