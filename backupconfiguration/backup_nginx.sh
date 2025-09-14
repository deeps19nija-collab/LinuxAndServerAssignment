#!/bin/bash

# Variables
DATE=$(date +%F)
BACKUP_DIR="/backups"
NGINX_CONF="/etc/nginx"
NGINX_DOC="/usr/share/nginx/html"
BACKUP_FILE="$BACKUP_DIR/nginx_backup_$DATE.tar.gz"
LOG_FILE="$BACKUP_DIR/nginx_backup_log_$DATE.txt"

# Create backup
tar -czf $BACKUP_FILE $NGINX_CONF $NGINX_DOC

# Verify backup integrity
echo "Verifying backup: $BACKUP_FILE" > $LOG_FILE
tar -tzf $BACKUP_FILE >> $LOG_FILE 2>&1

# Optional: Notify completion
echo "Nginx backup completed: $BACKUP_FILE"
