#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 2 : Write a program that takes 20 numbers from the input, compares them, and states which number is the largest and smalles, also
# calcutes Avg and Sum.


SUM=0
AVG=0

for i in {1..20}
do	
        while [ -z $VAR ]
	do	
	        read -p "Please enter $i number: " VAR
		VAR=$(echo $VAR | tr -d [:alpha:] | tr -d [:blank:])
        done

        if [ $i -eq 1 ]
        then
                MIN=$VAR
                MAX=$VAR
        
        elif [ $VAR -lt $MIN ]
        then
                MIN=$VAR

        elif [ $VAR -gt $MAX ]
        then
                MAX=$VAR
        fi

        SUM=$[$VAR+$SUM]
        unset VAR
done

AVG=$(echo "scale=2; SUM / 20" | bc)

echo "The smallest number is: $MIN"
echo "The largest number is: $MAX"
echo "The sum of the numbers is: $SUM"
echo "The average of the numbers is: $AVG"

