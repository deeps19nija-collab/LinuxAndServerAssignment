
# TASK 2 : System Monitoring Setup

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
git clone <your-repo-url>

