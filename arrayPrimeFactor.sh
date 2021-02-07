#!/bin/bash -x

read -p "enter a number: " num
counter=0
for (( i=2; i<=$num ; i++))
do
        if [ $(( $num%$i )) -eq 0 ]
        then 
                flag=0
                for (( j=2; j*j<=i; j++ ))
                do
                        if [ $(( $i%$j)) -eq 0 ]
                        then 
                                flag=1
                                break
                        fi

                done
                if [ $flag -eq 0 ]
                then
                        echo " $i is prime factor of $num"
			factors[(( $counter ))]=$i
			counter=$counter+1
                fi
        fi
done

echo ${factors[@]}

