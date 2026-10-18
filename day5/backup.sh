#!/bin/bash

# Name of backup with current date/time
backup_name="backup_$(date '+%Y-%m-%d_%H-%M').tar.gz"

# Source folder to back up
source_folder="$HOME/devops-journey"

# Backup destination folder
backup_folder="$HOME/backups"

# Create backup directory if it doesn't exist
mkdir -p $backup_folder

# Run the backup: compress entire devops-journey folder
tar -czf "$backup_folder/$backup_name" -C "$source_folder/.." devops-journey

# Confirm success
echo "✅ Backup created: $backup_folder/$backup_name"
