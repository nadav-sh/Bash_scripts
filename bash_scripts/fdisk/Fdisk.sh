#!/usr/bin/env bash
set -x 
###########
#Author: Nadav
#Date:20/02/2019
#Version: 0.0.1
#Purpose:a
###########

#Variables ::::::::::::::::::::::::::::::::::::

disk_array=($( ls /dev |grep -v sda |grep sd ))
Path="/dev"
Time="0.5"

#Function
fdisk_lvm_change(){
	local disk=$1
	echo "starting to work on disk: 	$disk "
	sleep $Time
	fdisk $disk << EOF >> /tmp/fdisk.log
n
p
1
1
 
 
w
EOF
		echo "finished editing disk $disk with fdisk"
}

###
#Main
###

for disk in ${disk_array[@]}
	do
			fdisk_lvm_change $Path/$disk
			done 
