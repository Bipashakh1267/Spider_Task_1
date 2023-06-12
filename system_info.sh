#!/bin/bash
echo -e "==============================\n        SYSTEM INFO\n==============================\nDesktop processor:" > system_info.txt
lscpu >> system_info.txt 
echo -e "\nSystem Kernel:" >> system_info.txt
uname -r >> system_info.txt
echo -e "\nOperating system version:" >> system_info.txt 
lsb_release -a >> system_info.txt
echo -e "\nDesktop memory:" >> system_info.txt 
free -h >> system_info.txt
echo -e "\nSerial number:" >> system_info.txt 
sudo dmidecode -s system-serial-number >> system_info.txt
echo -e "\nSystem IP:" >> system_info.txt
ip addr show | grep "inet " | grep -v 127.0.0.1 >> system_info.txt
echo -e "\n-------------------------" >> system_info.txt
echo -e "\nInstalled software:" >> system_info.txt
dpkg --list >> system_info.txt
echo -e "\n=============================" >> system_info.txt
