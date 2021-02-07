#! /bin/bash -x

student[0]="raj"
student[1]="shyam"
student[2]="fury"

#Explicit Declaration

declare -a servers

#compound Assignment

servers=( "Alpha" "prod" "Dev" "stage" "Beta")


counter=0

fruit[(( counter++ ))]="babana"
fruit[(( counter++ ))]="mango"

echo ${fruit[@]}

echo ${servers[*]}
echo ${student[@]}


#print anyone element

echo ${student[1]}

#get size of array

echo ${#student[@]}
echo ${#servers[@]}
