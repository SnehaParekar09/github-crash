#!/bin/bash

FU=$(df -H | egrep -v "Filesystem|tmpfs" | grep "/dev/xvda128" | awk '{print $5'} | tr -d %)

To="parekar.sneha09@gmail.com"

if [[ $FU -ge 10 ]]
then
	echo "Warning disk space" | mail -s "RAM Warning" $TO

else
	echo "All Good"
fi



