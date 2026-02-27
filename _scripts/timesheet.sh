#!/bin/bash

# timesheet.sh - record employee labour
# IT340-006
# Lily Gomes (lg332)
# 26-02-2026

TIMESHEET_PATH="/home/developers/Lab_5_workspace/logs/timesheet.log"

read -r -p "First Name: " fname
read -r -p "Last Name: " lname
read -r -p "Number of Hours Worked: " hours
read -r -p "Description of Work: " description

if [[ $hours =~ [0-9]+([.][0-9]+)?$ ]];
then
	echo "$(date -I minutes) $lname, $fname: $hours hours" >> $TIMESHEET_PATH
	echo "  $description" >> $TIMESHEET_PATH
else
	echo "Invalid input: hours should be a number"
	exit 1
fi
