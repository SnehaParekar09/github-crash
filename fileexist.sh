#!/bin/bash

FILEPATH="/home/paul/project/disk.sh"

if [[ -f $FILEPATH ]]
then
	echo "file exist"
else
	echo "file don't exist"
	exit 1
fi 

Hostname=$(hostname)
echo "$Hostname"

x=10
y=20
echo "addition is $(($x+$y))"
