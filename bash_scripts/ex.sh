#!/usr/bin/env bash

#####################################
#created by: nadav
#date: 23:04:2019
#version: 1.0.0
#purpose: creates LVM Drive
#####################################
set -x #just the 
#variables :::::::::::::::::::::::::::::
disk_array=($(ls /dev |grep -v sda|grep sd ))
Path="/dev" 
Time="0.5" 

#Functions /\/\/\/\/\/\/\/\/\/\/\/\/\/\

fdisk_lvm_change(){
	local disk=$1
	sleep $Time
	fdisk $disk <<E0F &>> /tmp/fdisk.log
n
p
1
1
 
 	  
w
E0F
	echo "finished editing disk $disk with fdsik"
}

###
#main --------------------------------------------
###
for disk in ${disk_array[@]}
	do
		fdisk_lvm_change $Path/$disk
		done
		
