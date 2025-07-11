

# 🖥 Daily System Info Logger

A simple bash project that logs essential system information such as CPU usage, memory, disk space, and uptime daily into a log file. Ideal for beginners to learn basic shell scripting, cron jobs, and system monitoring.

## 🚀 Features
- Daily system report generation
- CPU, RAM, Disk, and uptime information
- Automatically saves logs with date
- Easily extendable for backups or email alerts

## 📁 Log Sample

System Report - Fri Jul 11 09:00:00 PKT 2025

Uptime: 09:00:01 up 5:00,  2 users,  load average: 0.15, 0.20, 0.25

CPU Usage: %Cpu(s):  5.0 us,  2.0 sy,  0.0 ni, 92.0 id,  1.0 wa,  0.0 hi,  0.0 si,  0.0 st

Memory Usage: total        used        free      shared  buff/cache   available Mem:           3.8G        1.2G        1.5G        150M        1.1G        2.2G

Disk Usage: Filesystem      Size  Used Avail Use% Mounted on /dev/sda1        20G   12G  7.0G  63% /

## 🛠 Prerequisites
- Linux system (Ubuntu, CentOS, etc.)
- Bash shell
- Basic knowledge of Linux commands

## 🧾 Script Content

### 🔹 system_info.sh
```bash
#!/bin/bash

# In the name of Allah the most graciuos and the most mercifull (Alhamdulillah) 

# Create log directory if it doesn't exist
LOG_DIR="/home/$USER/system_logs"
mkdir -p "$LOG_DIR"

# File path with today's date
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

echo -e "\nReport generated successfully!" >> $LOG_FILE
```
## 🧪 How to Use

✅ Step 1: Make the script executable

``chmod +x system_info.sh``

✅ Step 2: Run the script manually to test

``./system_info.sh`` or ``bash system_info.sh``

✅ Step 3: Automate using Cron

### Edit your crontab:

```crontab -e```

Add the following line to run the script daily at 9 AM:

``0 9 * * * /home/yourusername/system_info.sh``

> Replace yourusername with your actual username.


## Result (ScreenShot)

![screen Shot for PoC](project.png)



## 🌟 Future Improvements

Email logs daily

Compress old logs automatically

Create a web-based dashboard for live system status


## 📄 License

This project is licensed under the MIT License. Feel free to use and modify.


--- 
Regards: Mehmood Ashraf DevOps Engr & Linux Sys Admin
---
---
