#!/bin/bash

free_space=$(free -mt |  grep "Total" | awk '{print $4}')

TH=700
if [[ $free_space -lt $TH ]]
then
	 
     echo "Warning RAM is running"
 else
	 echo "sufficent space"
fi



