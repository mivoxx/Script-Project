#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 5 : Write a program that saves the first and third fields of the /etc/passwd file every day in a file with the same date and 
# does not hold it for more than two days.


while true 
do
	VAR=`cut -d: -f1,3 /etc/passwd`
       	
	echo "$VAR" >> "/home/mina/output_$(date +%Y/%m/%d-%H:%M:%S).txt"
	
        find / -type f -name "output*.txt" -mtime +2 -exec rm {} \; 
         
	sleep 1d
done

















