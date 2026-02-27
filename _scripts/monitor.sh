#!/bin/bash

# monitor.sh - log system status
# IT340-006
# Lily Gomes (lg332)
# 26-02-2026

LOG_PATH="/home/developers/Lab_5_workspace/logs/system.log"

[ ! -f "$LOG_PATH" ] && touch $LOG_PATH

printf "SYSTEM REPORT %s\n------\n" $(date -I seconds) >> $LOG_PATH
uptime >> $LOG_PATH
free -h >> $LOG_PATH
df -h >> $LOG_PATH
echo $'------\n' >> $LOG_PATH
