#!/usr/bin/env bash

##############
#Author: Nadav
#Date: 17/08/2019
#Version: 0.0.1
#Purpose: checks if the user is logged in
##############

if [[ -z $1 ]];then
	echo "usage: $0 <username>"
	
exit 1
fi

while ! who | grep -w $1 &>/dev/null
do
	sleep 5
	done
	
	echo "welcome $1"
