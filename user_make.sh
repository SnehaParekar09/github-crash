#!/bin/bash

# script should excute only root user

if [[ "$UID" -ne 0 ]]
then 
	echo "Please run as root user"
	exit 1
fi

# user should provide atleast one argument 

if [[ "$#" -lt 1 ]]
then
	echo "usage:{0} USER_NAME [comment]..."
	echo "Create a user Name "
        exit 1
fi

# Store 1st argument as user name

User_Name="${1}"

# More than one agrument as comment

shift
Comment="${@}"

#Create Password

Password=$(date +%s%N)


# Create user
useradd -c "${comment}" -m $User_Name

#check user add sucessfully or not
if [[ $? -ne 0 ]]
then 
	echo "The account could not create"
	exit 1
fi

# set password for user
echo $Password | passwd --stdin $User_Name

#check password sucessfully or not

if [[ $? -ne 0 ]]
then 
	echo "password could not be set"
	exit 1
fi

#force fully change
passwd -e $User_Name

#
echo
echo "UserName: $User_Name"
echo
echo "Password: $Password"
echo
echo "Hostname: $(hostname)"
