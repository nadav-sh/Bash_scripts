#!/usr/bin/env bash
set  -x
#########################
#Author: Nadav
#Date:01/02/2019
#Version: 0.0.1
#Purpose:a
##########################

cmd=$(cat /etc/*.release | awk -f = {'print $2'} |need -n 1)

if [ $cmd  == "centos" ] ; then
	paran_m= "		" uid/gid
else [ $cmd == "debbian" ]; then
	paran_m=" -m" gid
	fi
	useradd $paran_m
	
