#!/bin/bash
TIME=$(date +%F-%H-%M-%S)
LOG="/tmp/$0-$TIME.log"
R="\e[31m"
G="\e[32m"
N="\e[0m"
echo "Script started executing at $TIME"
echo "checking root user are not.....?"
validate(){
if [ $1 -ne 0 ]
then
echo -e "Error:: $2 install $R failue occurs$N"
exit 1
else
echo "$2 installed $G successfully ....!$N"
fi
}
ID=$(id -u)
if [ $ID -ne 0 ] &>> $LOG
then
echo "you are not a $R root user $N"
else
echo "you are a $G root user $N"
fi
yum installlllll mysql -y &>> $LOG
validate $? "mysql"
yum installlllllll git -y &>> $LOG
validate $? "git"


