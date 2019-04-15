#!/bin/bash

#This is script which will take user input as #firstname #middleName #lastName and after userinput it should print hi hello bye

read -p "Enter Your First Name: " name
echo "hello" $name 

read -p "Enter Your Middle Name: " middlename
echo  "okay" $middlename

read -p "Enter Your Last Name: " lastname
echo "bye" $lastname
