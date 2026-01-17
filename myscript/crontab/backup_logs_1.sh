#!/bin/bash

# Directory to back up
LOG_DIR="/var/log"

# Backup destination folder
BACKUP_DIR="/home/ec2-user/myscript/crontab/log_backups_1"

# Create destination folder if not exists
mkdir -p $BACKUP_DIR

# Create backup filename with date
BACKUP_FILE="$BACKUP_DIR/logs_backup_$(date +'%Y-%m-%d_%H-%M-%S').tar.gz"

# Create compressed backup
tar -czf $BACKUP_FILE $LOG_DIR

# Optional: remove backups older than 7 days
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -exec rm -f {} \;

echo "[$(date)] Backup completed: $BACKUP_FILE" >> /home/ec2-user/backup_status.log


# tar -czf $BACKUP_FILE $LOG_DIR = its creating compressed file
# tar -tzf $BACKUP_FILE = its shows the strucutre of log files 
# less var/log/$BACKUP_FILE = not proper way it will show the binary format 
# tar -xOzf $BACKUP_FILE var/log/git_clone.init | less = its show logs inside of git_clone.init file so use this 
