#!/bin/bash
#################################
# Author : Narendra
# Date : 25/5/2026
# Project : Roboshop
# Program : Mysql creation
################################

source ./common.sh
app_name=mysql

check_root

dnf install mysql-server -y &>>$LOG_FILE
VALIDATE $? "Installing mysql server"

systemctl enable mysqld &>>$LOG_FILE
systemctl start mysqld  
VALIDATE $? "Enable and Start mysql"

mysql_secure_installation --set-root-pass RoboShop@1
VALIDATE $? "Creating Password for mysql"