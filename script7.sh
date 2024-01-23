#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 7 : Write a program that reads a file, pings one by one from within a file containing the list of destination IPs, and saves the result
# in a log file on the same day with the hostname of that machine.


IP_LIST=/home/mina/ip_lists.txt
LOG_FILE=/home/mina/log_file.txt
DATE=$(date +%Y/%m/%d-%H:%M:%S)
HOST=$(hostname)

while read IP
do	
	ping -c 1 $IP > /dev/null

	if [ $? -eq 0 ]
	then
		echo "IP $IP is UP - $DATE-$HOST" >> $LOG_FILE
	else
		echo "IP $IP is DOWN - $DATE-$HOST" >> $LOG_FILE
	fi	

done < $IP_LIST 

