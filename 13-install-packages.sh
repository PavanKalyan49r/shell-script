#!/bin/bash

ID=$(id -u)

if [ $ID -ne 0 ]
then
echo -e "$R ERROR:: please run this script with root access $N"
exit 1 #you can give other than 0
else
echo "you are root user"
fi # fi  means reverse of if, indicating condtion end

echo "all arguments passed: $@"