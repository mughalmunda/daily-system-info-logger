#!/bin/bash

# In the name of Allah the most mercifull and the most benificient. (Alhamdulillah)

# Create log dir if does not exist
LOG_DIR="/home/$USER/system_logs"
mkdir -p "$LOG_DIR"


# File name with current date
LOG_FILE="$LOG_DIR/system_logs_$(date +%F).log"

echo "System Report - $(date)" >> $LOG_FILE
echo "-------------------------" >> $LOG_FILE

# Uptime
echo "Uptime:" >> $LOG_FILE
uptime >> $LOG_FILE

# CPU usage
echo -e "\nCPU Usage:" >> $LOG_FILE
top -b -n1 | grep "Cpu(s)" >> $LOG_FILE

# RAM usage
echo -e "\nMemory Usage:" >> $LOG_FILE
free -h >> $LOG_FILE

# Disk usage
echo -e "\nDisk Usage:" >> $LOG_FILE
df -h >> $LOG_FILE

echo -e "\nReport generated successfully!" >> $LOG_FILE