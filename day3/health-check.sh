#!/bin/bash

# Get root disk usage (%)
usage=$(df / | tail -1 | awk '{print $5}' | sed 's/%//')

# Log file
log="health.log"

# Timestamp
timestamp=$(date '+%Y-%m-%d %H:%M:%S')

# Check and log
if [ $usage -gt 80 ]; then
    echo "[$timestamp] WARNING: Disk usage is ${usage}%!" >> $log
else
    echo "[$timestamp] OK: Disk usage is ${usage}%" >> $log
fi

