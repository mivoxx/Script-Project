#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 8 : Wrtie a script that get an IP from input, ping it and tell us it is 
# reachable or not reachable but we need an IP validation to check the input is a 
# valid IP or not.


read -p "Please enter an IP address: " IP

IP=$(echo $IP | tr -d [:alpha:])
DOTS=$(echo $IP | tr -d [:digit:] | tr -d [:space:] | wc -c)

if [ $DOTS -eq 3 ] 
then
	for i in 1 2 3 4
	do
		VAR=$(echo $IP | cut -d "." -f $i)
		if [ $VAR -lt 0 ] || [ $VAR -gt 255 ] 
		then
			echo "Invalid IP address" 
			exit 1
		fi
	done

	echo "Valid IP address"

	ping -c 1 $IP >> /dev/null
	
	if [ $? -eq 0 ] 
	then	
		echo "The IP address is reachable"
	else
		echo "The IP address is not reachable"
	fi
	exit 0
else	
        echo "Invalid IP address" 
	exit 1
fi	
