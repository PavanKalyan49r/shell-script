#!/bin/bash

echo "please enter your username"

read -s USERNAME #the value entered above will be automatically aTTACHED TO USERNAME variable

echo "please enter your password :: "
read -s password

echo "usedrname is: $USERNAME, password is : $password" # i am printing just for validation , you should not print username and passwrod in script
