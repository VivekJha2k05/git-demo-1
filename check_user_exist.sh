#!/bin/bash

<<comment
This script check user exist or not 
comment

read -p  "Write the name of user you want to check: " username
count=$(cat /etc/passwd | grep $username | wc | awk '{print $1}')

if [[ $count == 0 ]];
then
	echo "User doesn't exists"
else
	echo "user exists"

fi

