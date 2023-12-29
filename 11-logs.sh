#!/bin/bash


ID=$(id -u)
TIMESTAMP=$(date +%F-%H-%M-%S)
R="\e[31m"
G="\e[32m"
N="\e[0m"

LOGFILE="/tmp/$0-$TIMESTAMP.log"

echo "script started executing at $TIMESTAMP" &>> $LOGFILE

VALIDATE(){
if [ $1 -ne 0 ]
then
echo "error :: $2 ... $R failed $N"
exit 1
else
echo "$2 ... $G success $N"
fi
}

if [ $ID -ne 0 ]
then
echo "$R error :: please run this script with root access $N"
exit 1 #you can give other than 0
else
echo "you are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y &>> $LOGFILE


VALIDATE $? "installing git"

