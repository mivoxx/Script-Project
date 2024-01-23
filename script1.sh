#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 1 : Write a program that takes a number from the input, compares it to 10,# and returns a message for each of the 3 modes (larger, equal, and smaller).


while [ -z $var1 ]
do	
	read -p "Please enter a number: " var1
	var1=`echo $var1 | tr -d [:alpha:] | tr -d [:blank:]`
done

if [ $var1 -gt 10 ]
then
	echo "The number is larger than 10"

elif [ $var1 -eq 10 ]
then 
	echo "The number is equal to 10"

elif [ $var1 -lt 10 ]
then 
	echo "The number is smaller than 10"
fi	
