#!/bin/bash


# Variables
DATE=$(date +%F)
BACKUP_DIR="/backups"
APACHE_CONF="/etc/httpd"
APACHE_DOC="/var/www/html"
BACKUP_FILE="$BACKUP_DIR/apache_backup_$DATE.tar.gz"
LOG_FILE="$BACKUP_DIR/apache_backup_log_$DATE.txt"


# Create backup
tar -czf $BACKUP_FILE $APACHE_CONF $APACHE_DOC


# Verify backup integrity
echo "Verifying backup: $BACKUP_FILE" > $LOG_FILE
tar -tzf $BACKUP_FILE >> $LOG_FILE 2>&1

# Optional: Notify completion
echo "Apache backup completed: $BACKUP_FILE"
