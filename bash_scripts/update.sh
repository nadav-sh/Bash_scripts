#!/usr/bin/env bash

#make update 

sudo apt update | sudo apt upgrade -y
I=$?
zman=$(date +'%d'/'%m'__"%T")


if [ $I == 0 ];then
	echo "the computer is up to date $zman " >> /home/nadav/Desktop/logs/nadav_logs.txt
else
	echo "the computer is out to date $zman " >> /home/nadav/Desktop/logs/nadav_logs.txt
fi


sleep 5

if [ $I == 0 ];then
	sudo reboot
fi

