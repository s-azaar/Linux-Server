#!/bin/bash


files=("mem.txt" "disk.txt" "cpu.txt") 

sumf=0
sumu=0

count=0


calculate_avg () {
	while read line ; do
		num=`(echo "$line" | cut -d' ' -f1)`
		sum=$((sum + $num))
		count=$((count + 1))
	done < "$1"
	file_name=`echo "$3" | cut -d'.' -f1`
	echo AVG of "$file_name" is  $(( $sum / $count )) >> $2
	count=0
	sum=0	
}


for i in "${files[@]}"; do
	to="/var/www/html/${i}"
	if [ $i = "cpu.txt" ] 
	then
		c="/home/sazaar/${i}"
		paste $c > $to
		calculate_avg $c $to $i	
	else
		f="/home/sazaar/f${i}"
		u="/home/sazaar/u${i}"
		paste $f $u > $to
		calculate_avg $f $to $i
		calculate_avg $u $to $i
	fi

done

