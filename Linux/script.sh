#!/bin/bash

outfile=~/output.txt
echo $PATH > outfile

if [ -d ~/research ]
then
	echo ~/research exist >> outfile
	if [ -f ~/research/sys_info.txt ]
	then
		echo sys_info.txt exist >> outfile
		rm -R ~/research/sys_info.txt
		echo i have removed the sys_info.txt >> outfile
		touch ~/research/sys_info.txt
		echo i have created a new file for the deleted one >> outfile
	else
		echo sys_info does not exist, lets create one blank >> outfile
		touch ~/research/sys_info.txt
	fi	
			
else
	echo i will create ~/research >> outfile
	mkdir ~/research
fi

myvar=$( ip addr | grep inet | tail -2 | head -1 )
echo $myvar >> outfile

