#!/bin/bash

LOG_DIR="/var/log/system_monitor"
LOG_FILE="$LOG_DIR/system_report_$(date +'%Y-%m-%d_%H-%M').log"

echo "===== System Monitoring Report: $(date) =====" > $LOG_FILE

echo -e "\n--- CPU/Memory/Process Usage (htop equivalent) ---" >> $LOG_FILE
top -b -n1 | head -20 >> $LOG_FILE

echo -e "\n--- Disk Usage (df) ---" >> $LOG_FILE
df -h >> $LOG_FILE

echo -e "\n--- Directory Usage (du) ---" >> $LOG_FILE
du -sh /home/* 2>/dev/null >> $LOG_FILE

echo -e "\n--- Top 10 CPU-consuming Processes ---" >> $LOG_FILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -10 >> $LOG_FILE

echo -e "\n--- Top 10 Memory-consuming Processes ---" >> $LOG_FILE
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -10 >> $LOG_FILE

echo "Report saved to $LOG_FILE"
