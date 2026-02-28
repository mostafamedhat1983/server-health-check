#!/usr/bin/env bash
# This shebang uses the `env` command to search for Bash in the user's PATH environment variable. 
# The `env` utility locates the first `bash` executable it finds in PATH and uses that interpreter.​
# More portable across different Unix-like systems because it doesn't assume a fixed Bash location
# Slightly slower due to the PATH search

# strict mode
set -euo pipefail
#     -e      : Exit on any command failure 
#     -u      : Error on unset variables
# -o pipefail : in pipelines like `cmd1 | cmd2`, fail if any command fails 

echo "Hostname and IP address"
# hostname: Display the system's hostname
# hostname -I: Display all IP addresses assigned to the host
hostname && hostname -I

echo " System uptime "
# uptime: Show how long the system has been running and load averages
uptime

echo " Disk usage Root "
# df -h /: Display disk space usage for root partition in human-readable format
# awk 'NR==2 {print $5}': Extract the 5th column (usage percentage) from the 2nd row
df -h / | awk 'NR==2 {print $5}'

echo " Total memory "
# free -h: Display memory usage statistics in human-readable format
# grep Mem: Filter to show only the memory line
# awk '{print $2}': Extract the 2nd column (total memory)
free -h | grep Mem | awk '{print $2}'

echo " Used memory "
# free -h: Display memory usage statistics in human-readable format
# grep Mem: Filter to show only the memory line
# awk '{print $3}': Extract the 3rd column (used memory)
free  -h | grep Mem | awk '{print $3}'

