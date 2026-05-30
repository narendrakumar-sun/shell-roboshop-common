#!/bin/bash
#####################################
# Author : Narendra
# Date : 30/05/2026
# Project : Roboshop Common
# Program : User server
#######################################

source ./common.sh
app_name=user
check_root
app_setup
nodejs_setup
systemd_setup
print_total_time