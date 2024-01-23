#!/bin/bash
# This code is written by Mina Vosoughi
# Exercise 6 : Write a program that take a backup from home directory of your user after each time user logged out.


DATE=$(date +%Y/%m/%d-%H:%M:%S)
BACkUP_DST="/home/$USER/backups/"
FILENAME="backup_$DATE.tar.gz"

mkdir -p "$BACKUP_DST"

tar -zcf "$BACKUP_DST$FILENAME" "/home/$USER"

if [ $? -eq 0 ]
then
        echo "Backup Done"
else
        echo "Backup Failed"
fi




