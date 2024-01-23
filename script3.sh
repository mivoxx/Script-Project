#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 3 : Write a program that has the IP of a server and its User/Pass in front# of the script name and if it is pingable, sends its /etc/passwd file to /home/user # path of that server, otherwise a message displayed that the server is not
# accessible.


IP=$1
USER=$2
PASSWORD=$3

ping -c 1 $IP >> /dev/null

if [ $? -eq 0 ]
then
	scp /etc/passwd $USER@$IP:/home/$USER
	
	echo "File successfully copied to /home/$USER"
else
	echo "Server is not accessible"
fi	
