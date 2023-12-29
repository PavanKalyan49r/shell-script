#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo "error :: please run this script with root access"
else
echo "you are root user"
fi

yum install mysql -y


if [ $? -ne 0 ]
then
echo " error :: install;ing git is failed"
exit 1
else
echo "installing git is success"
fi