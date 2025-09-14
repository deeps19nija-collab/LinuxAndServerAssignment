#!/bin/bash

# Script: user_management.sh
# Purpose: Create user accounts, secure directories, and enforce password policies.
# Logs all operations to /var/log/user_management.log

LOG_FILE="/var/log/user_management.log"

# Function to log messages with timestamps
log() {
    echo "$(date '+%Y-%m-%d %H:%M:%S') - $1" | tee -a $LOG_FILE
}

log "===== Starting User Management and Access Control Setup ====="

# Define users and workspace directories
declare -A users=( ["Sarah"]="/home/Sarah/workspace" ["Mike"]="/home/mike/workspace" )

# Loop through users to create accounts
for user in "${!users[@]}"; do
    HOME_DIR="${users[$user]%/workspace}"  # Strip /workspace for home

    if id "$user" &>/dev/null; then
        log "User $user already exists."
    else
        # Create user with home directory
        useradd -m -d "$HOME_DIR" -s /bin/bash "$user"
        log "Created user $user with home directory $HOME_DIR"

        # Generate a secure random password
        PASSWORD=$(openssl rand -base64 12)
        echo "$user:$PASSWORD" | chpasswd
        log "Set secure password for $user"

        # Force password change on first login
        chage -d 0 "$user"
        log "Password for $user will expire on first login."
    fi

    # Create workspace directory
    WORKSPACE="${users[$user]}"
    mkdir -p "$WORKSPACE"
    chown "$user:$user" "$WORKSPACE"
    chmod 700 "$WORKSPACE"
    log "Workspace directory $WORKSPACE created with restricted access"

    # Set password expiration (30 days)
    chage -M 30 "$user"
    log "Password expiration set to 30 days for $user"
done

log "===== User Management and Access Control Setup Completed ====="
log "Check $LOG_FILE for detailed logs."

# Note for administrator:
echo "IMPORTANT: Ensure password complexity is enforced via PAM configuration."
echo "Example (Debian/Ubuntu): edit /etc/pam.d/common-password to include:"
echo "password requisite pam_pwquality.so retry=3 minlen=12 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1"
