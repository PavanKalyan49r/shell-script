#!/bin/bash


ID=$(id -u)
TIMESTAMP=$(DATE +%F-%H-%M-%S)


LOGFILE="/tmp/$0-$TIMESTAMP.log"

VALIDATE(){
if [ $1 -ne 0 ]
then
echo "error :: $2 ... failed"
exit 1
else
echo "$2 ... success"
fi
}

if [ $ID -ne 0 ]
then
echo "error :: please run this script with root access"
exit 1 #you can give other than 0
else
echo "you are root user"
fi # fi means reverse of if, indicating condition end

yum install mysql -y &>> $LOGFILE

VALIDATE $? "installing mysql"

yum install git -y &>> $LOGFILE


VALIDATE $? "installing git"

