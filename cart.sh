#!/bin/bash
#######################################
# Author : Narendra
# Date : 30/5/2026
# Project : Roboshop Common
# Program : Cart server
#######################################

source ./common.sh
app_name=cart

check_root
app_setup
nodejs_setup
systemd_setup
print_total_time