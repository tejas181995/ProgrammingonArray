#! /bin/bash -x
highest=99
second_high=98
lowest=1001
second_low=1000
for (( i=0; i<10; i++ ))
do
number=$(( $RANDOM%900 +100 ))

NumArr[(( i ))]=$number
	if [ $number -ge $highest ]
	then
		second_high=$highest
		highest=$number

	elif [ $number -ge $second_high ]
	then	
		second_high=$number
	fi

	if [ $number -le $lowest ]
	then
		second_low=$lowest
		lowest=$number
	elif [ $number -le $second_low ]
	then
		second_low=$number

	fi
	
done

echo ${NumArr[@]}
echo "highest no is : $highest"
echo "second highest no is : $second_high"
echo "lowest no is : $lowest "
echo "second lowest is : $second_low"
