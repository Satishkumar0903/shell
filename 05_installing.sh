#!/bin/bash
TIME=$(date +%F-%H-%M-%S)
LOG="/tmp/$0-$TIME.log"
echo "Script started executing at $TIME"
echo "checking root user are not.....?"
validate(){
if [ $1 -ne 0 ]
then
echo "Error:: $2 install failue occurs"
else
echo "Mysql installed successfully installed....!"
fi
}
ID=$(id -u)
if [ $ID -ne 0 ] &>> $LOG
then
echo "you are not a root user"
else
echo "you are a root user"
fi
yum install mysql -y &>> $LOG
validate $? "mysql"
yum install git -y
validate $? "git"

