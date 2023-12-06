#!/bin/bash

#System Information variables
HOSTNAME=$(hostname)
OS=$(cat /etc/os-release)
UPTIME=$(uptime -p)
KERNAL=$(uname -r)
CPU=$(lscpu)
MEMORY=$(free -h)
IP_INFO=$(ip addr)
FILESYSTEM=$(df -h)
ERROR_LOG=$(grep -i "error" /var/log/syslog | tail -n 5)

#This is the file where the information is going to be saved!
OUTPUT_FILE=$"systeminfo.txt"

#The information that is going to be save into the "systeminfo_edenburn.txt"
echo "System Hostname: $HOSTNAME" > "$OUTPUT_FILE" 
echo "Operating System: $OS" >> "$OUTPUT_FILE"
echo "System Uptime: $UPTIME" >> "$OUTPUT_FILE"
echo "Linux Kernel Version: $KERNAL" >> "$OUTPUT_FILE"
echo -e "\nCPU Information:\n$CPU" >> "$OUTPUT_FILE"
echo -e "\nMemory Information:\n$MEMORY" >> "$OUTPUT_FILE"
echo -e "\nIP Information:\n$IP_INFO" >> "$OUTPUT_FILE"
echo -e "\nFilesystem Utilization:\n $FILESYSTEM" >> "$OUTPUT_FILE"
echo -e "\nLast five lines of syslog with 'error' keyword:\n$ERROR_LOG" >> "$OUTPUT_FILE"
echo "Look at "Systeminfo.txt" to view the results!"
