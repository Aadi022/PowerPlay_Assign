# Part 3: Monitoring Script

### 1. Created the monitoring script file
```bash
sudo nano /usr/local/bin/system_report.sh
```
The script prints date/time, uptime, CPU usage, memory usage, disk usage, and the top 3 processes by CPU, and appends output to /var/log/system_report.log.
Please find the bash file in [system_report.sh](system_report.sh)

### 2. Made the script executable
```bash
sudo chmod +x /usr/local/bin/system_report.sh
```

### 3. Prepared the log file
```bash
sudo touch /var/log/system_report.log
sudo chmod 666 /var/log/system_report.log
```

### 4. Configured a cron job to run the script every 5 minutes
```bash
sudo crontab -e
```

Added:
```bash
*/5 * * * * /usr/local/bin/system_report.sh
```

### 5. Verified the cron configuration
```bash
sudo crontab -l
```

### 6. Verified the log file after multiple runs:
```bash
sudo tail -n 50 /var/log/system_report.log
```
---
## Deliverables
The required deliverables for Part3-
1) Contents of the cron configuration file used- [Content_Cron.png](Content_Cron.png)
2) Screenshot of log file entries after at least two runs- [LogEntries_1.png](LogEntries_1.png) and [LogEntries_2.png](LogEntries_2.png)

## Task Commands
The required terminal commands for Part-3 is in [Terminal.png](Terminal.png)
