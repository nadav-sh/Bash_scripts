#!/usr/bin/env bash
set -x
#########################
#Author: Nadav
#Date:18/08/2019
#Version: 0.0.1
#Purpose: upload to GitHub
##########################

#Variables /\//\/\/\/\/\/\\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/\/
#
upload=$#
Files=$@
#
#Function :::::::::::::::::::::::::::::::::::::::::::::
 _yes() {
	if [ -n $upload ]; then
	echo "you upload all files"
	read -r -p "commit message" desc
	git add *
	git add -u
	git commit -m "$desc"
	git push origin master
	fi
}

_no() {
	if [ -n $upload ]; then
	echo "what do you upload?"
	read -r -p "what files do you want to upload?" Files
	echo "you have selected the files: $Files "
	read -r -p "commit message" desc

	git add $Files
	git add -u
	git commit -m "$desc"
	git push origin master
	fi
}

echo "you are runnig a sctipt to update files to GitHub"
sleep 2

read -p "are you interested in uploading all files (yes or no)?" upload
	echo "You have chosen $upload " 
	
if [ $upload = yes ];then
	_yes 
	else [ $upload = no ]
	_no
	sleep 1
	fi


 

