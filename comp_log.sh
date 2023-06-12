#!/bin/bash
echo -e "==============================\n        COMPUTER LOG\n==============================\nUptime:" > comp_log.txt
uptime >> comp_log.txt 
echo -e "\nDisk and memory usage:" >> comp_log.txt
df -h >> comp_log.txt
free -h >> comp_log.txt
echo -e "\nUtilization and most expensive processes:" >> comp_log.txt 
top -b -n 1 -o %CPU | head -n 20 >> comp_log.txt
echo -e "\nOpen TCP ports:" >> comp_log.txt 
netstat -tuln >> comp_log.txt
echo -e "\nCurrent connections:" >> comp_log.txt 
netstat -an | grep ESTABLISHED >> comp_log.txt
echo -e "\nProcesses:" >> comp_log.txt
ps aux >> comp_log.txt
echo -e "\n=============================" >> comp_log.txt
