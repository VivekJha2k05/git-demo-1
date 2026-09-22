#!/bin/bash

## user-defined variable

hero="vivek"
villan="shivam"
echo "hero is: $hero"
echo "villan is: $villan"

## Shell/Environment varible (pre-defined variable)

echo "Current logged in user is: $USER"

## Taking input from variable

read -p "Enter your Full name:" name
echo "You Full Name is $name"

## Arguments

## ./variable.sh vivek mohit rohit

echo "file-name: $0"

echo "first-hero:$1"
echo "second-hero: $2"
echo "third-hero: $3"

echo "total-number of arguments are : $#"
echo "list of all arguments are: $@"

