#!/bin/bash

<< comment
this is a  script that will
create a user
comment

echo "User Creation Started"

read -p "Enter username:" username
read -p "Enter password:" password

sudo useradd -m "$username"
echo -e "$password\n$password" | sudo passwd "$username"

echo "User Created Successfully.."

sudo userdel $username

#We are checking that user is successfully deleted or not

##first obtained user list output goes to grep where it search by username and then output goes to wc if it comes 0 then user is deleted successfully..

if [[  $(cat /etc/passwd | grep $username | wc | awk '{print $1}') == 0 ]]
then
	echo "User is deleted..."
else
	echo "user is not deleted"
fi


