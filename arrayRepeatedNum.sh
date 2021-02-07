#! /bin/bash -x

count=0

for ((i=0; i<=100; i++ ))
do
	if [ $i -eq 11 -o $i -eq 22 -o $i -eq 33 -o $i -eq 44 -o $i -eq 55 -o $i -eq 66 -o $i -eq 77 -o $i -eq 88 -o $i -eq 99 ]
	then
		double[(( $count ))]=$i
		count=$count+1
	fi
done

echo ${double[@]}
