#! /bin/bash -x

for (( i=0; i<10; i++ ))
do
number=$(( $RANDOM%900 +100 ))

NumArr[(( i ))]=$number
done

for (( j=0; j<10; j++ ))
do
	for (( k=$j; k<10; k++ ))
	do
		if [ ${NumArr[j]} -gt ${NumArr[k]} ]
		then
			temp=${NumArr[j]}
			NumArr[(( j ))]=${NumArr[k]}
			NumArr[(( k ))]=$temp
		fi
	done
done

echo ${NumArr[@]}
echo "${NumArr[1]} is second smallest number"
echo "${NumArr[8]} is second highest number"
