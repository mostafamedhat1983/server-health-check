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
hostname && hostname -I

echo " System uptime "
uptime

echo " Disk usage Root "
df -h / | awk 'NR==2 {print $5}'

echo " Total memory "
free | grep Mem | awk '{print $2}'

echo " Used memory "
free | grep Mem | awk '{print $3}'
