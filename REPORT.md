# System Monitoring Setup Report

## 1. Objective
Configure a monitoring system to track CPU, memory, disk usage, and resource-heavy processes.  
Provide visibility for developers and support capacity planning.

---

## 2. Implementation Steps
1. **Installed monitoring tools**
   - Installed `htop` and `nmon` using:
     ```bash
     yum install epel-release -y
     yum install htop nmon -y
     ```
  <img width="940" height="501" alt="image" src="https://github.com/user-attachments/assets/19418887-2774-4be5-b66b-a975947773fc" />
  <img width="940" height="594" alt="image" src="https://github.com/user-attachments/assets/1eed527a-3219-4a3e-8ea5-68a2286c11c5" />

   - Verified installation using:
     ```bash
     which htop
     which nmon
     ```

     

2. **Disk usage monitoring**
   - Used `df -h` to check overall disk usage.
   - Used `du -sh /home/*` for per-directory usage.
  
   - Saved results to logs:
     ```bash
     mkdir -p /var/log/system_monitor
     df -h > /var/log/system_monitor/disk_usage.log
     ```
   <img width="940" height="594" alt="image" src="https://github.com/user-attachments/assets/405f444d-23cb-4c7b-9926-b5fcf85351e3" />
   <img width="940" height="354" alt="image" src="https://github.com/user-attachments/assets/f63b18f2-56ad-4297-81a6-90727334cafa" />

3. **Process monitoring**
   - Used `ps` to identify CPU and memory intensive processes:
     ```bash
     ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -10
     ```
     <img width="940" height="417" alt="image" src="https://github.com/user-attachments/assets/1d509008-2572-43b9-8a64-a0bbdfb3c759" />


4. **Automation with script**
   - Created `system_monitor.sh` to collect all metrics.
   - Made it executable:
     ```bash
     chmod +x system_monitor.sh
     ```

5. **GitHub integration**
   - Pushed script, README, `.gitignore`, and screenshots to repo.
   - Added this `REPORT.md` to summarize setup.

---

## 3. Challenges Encountered
- **Log directory missing**: Initially got  
  `No such file or directory` when redirecting to `/var/log/system_monitor/`.  
  ✅ Fixed by creating directory with:
  ```bash
  mkdir -p /var/log/system_monitor
 - **EPEL Repo required**: On centos
   `htop`and `nmon`wern't available by default.  
   ✅Fixed by installing the epel-release first
   
