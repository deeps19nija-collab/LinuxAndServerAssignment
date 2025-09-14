
# TASK 1 : System Monitoring Setup

## Overview
This repository contains a basic monitoring setup to track CPU, memory, disk usage, and resource-heavy processes.  
It helps developers and admins troubleshoot performance issues and plan for capacity.

## Features
- CPU, memory, and process monitoring
- Disk usage reporting
- Top resource-consuming processes
- Logs saved under `/var/log/system_monitor/`
- Automation Job support for monitoring.
- Creted Report.md summarizing the implementation steps and terminal output screenshots.  

## Setup Instructions
1. Clone this repository:
   ```bash
   git clone https://github.com/<your-username>/system-monitoring.git
   cd system-monitoring
2. Make the script executable:
   ```bash
   chmod +x system_monitor.sh
   
4. Run the script as root or with sudo:
   ```bash
   sudo ./system_monitor.sh

   ```
### Files
[Sample Log File](https://github.com/deeps19nija-collab/LinuxAndServerAssignment/blob/main/monitoring/system_report_2025-09-14_15-38.log)  

[Script](https://github.com/deeps19nija-collab/LinuxAndServerAssignment/blob/main/monitoring/system_monitor.sh)  

[REPORT.md](https://github.com/deeps19nija-collab/LinuxAndServerAssignment/blob/main/monitoring/REPORT.md)  

   

# TASK 2: User Management and Access Control Setup

## Objective
Automate the creation of user accounts, secure their workspaces, and enforce password policies for new developers.

## Features
- Creates user accounts: Sarah and Mike.
- Sets secure passwords with first-login expiration.
- Creates isolated workspace directories:
  - Sarah: `/home/Sarah/workspace`
  - Mike: `/home/mike/workspace`
- Ensures only the respective user can access their workspace (`700` permissions).
- Passwords expire every 30 days.
- Logs all actions to `/var/log/user_management.log`.

## Usage
1. Clone the repository:
   ```bash
   git clone https://github.com/deeps19nija-collab/LinuxAndServerAssignment.git

2. Navigate to the project folder: 
   ```bash
   cd UserManagement/

3. Make the script executable:
   ```bash
   chmod +x user_management.sh

4. Run the script as root or with sudo:
   ```bash
   sudo ./user_management.sh

## Password Complexity  

**Ensure PAM enforces password rules (Debian/Ubuntu example):**  
password requisite pam_pwquality.so retry=3 minlen=12 ucredit=-1 lcredit=-1 dcredit=-1 ocredit=-1  
**This ensures passwords have at least 12 characters, including uppercase, lowercase, digit, and special character.**  

## Logging
**Operations are logged with timestamps in /var/log/user_management.log.**  

- [Sample Log file](https://github.com/deeps19nija-collab/LinuxAndServerAssignment/blob/main/UserManagement/user_management.log)
- [Report Template](https://github.com/deeps19nija-collab/LinuxAndServerAssignment/blob/main/UserManagement/USERMGMTREPORT.md)
- [Script File](https://github.com/deeps19nija-collab/LinuxAndServerAssignment/blob/main/UserManagement/user_management.sh)






