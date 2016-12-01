#/!bin/bash


#purpose : Generate server report 
#Date    : 
#Author   :


line="================================="
echo "System Report for $hostname"
echo $line 

total_memory=$(free -m |awk '/Mem/{print $2, "MB"}')
echo "Total Memory: $total_memory"
echo $line

total_cpu=$( grep -c processor /proc/cpuinfo )
echo "Total CPU: $total_cpu"
echo $line

disk_space=$(df -h)
echo "Disk Space: $disk_space"
echo $line

ip_addr=$(ip r l |awk '/src/{print $NF}')
#ip_address=$(ip r l |awk '/src/{print $NF}')
echo  "IP Address: $ip_addr"
echo $line 

#servernao e=$(hostname)

#echo $servername


#total_memory=$(free -m |awk '/Mem/{print $2, "MB"}')
#echo $total_memory

#total_cpu=$( grep -c processor /proc/cpuinfo )
#echo $total_cpu 
