#/bin/bash

<<comment
This is a script file for learning functions
comment

useradd() {
	read -p "Enter the username:" username
	sudo useradd $username
	echo "User Created Successfully.."
}
useradd
