#!/bin/bash


ID=$(id -u)

VALIDATE(){
if [ $ID -ne 0 ]
then
echo "error :: installing is failed"
exit 1
else
echo "installing is success"
fi
}

if [ $ID -ne 0 ]
then
echo "error :: please run this script with root access"
exit 1 #you can give other than 0
else
echo "you are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y

VALIDATE

yum install git -y

VALIDATE

