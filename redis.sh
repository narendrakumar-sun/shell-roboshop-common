#!/bin/bash
#####################################
# Author : narendra
# Date : 25/5/2026
# Project : Robodhop
# Program : Create Redis Database
#####################################

source ./common.sh
app_name=redis

check_root

dnf module disable redis -y &>>$LOG_FILE
dnf module enable redis:7 -y &>>$LOG_FILE
VALIDATE $? "Enable Redis:7"

dnf install redis -y  &>>$LOG_FILE
VALIDATE $? "Installed Redis"

sed -i -e 's/127.0.0.1/0.0.0.0/g' -e '/protected-mode/ c protected-mode no' /etc/redis/redis.conf
VALIDATE $? "Allowing remote connections"

systemctl enable redis &>>$LOG_FILE
systemctl start redis 
VALIDATE $? "Enabled and started Redis"