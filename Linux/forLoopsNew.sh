#!/bin/bash
list=('/etc/passwd' '/etc/shadow')
for path in ${list[@]}
do
	for file in $(ls)
	do
	       	echo 'printing filename from' $path;sleep 1	
		echo $(ls -lrt) $file
	done
done

