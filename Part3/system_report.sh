{
echo "=============================="
echo "DATE & TIME: $(date)"
echo "UPTIME: $(uptime -p)"

# CPU usage (%)
CPU=$(top -bn1 | grep "Cpu(s)" | awk '{print 100 - $8 "%"}')
echo "CPU USAGE: $CPU"

# Memory Usage (%)
MEM=$(free | grep Mem | awk '{printf("%.2f%%", $3/$2 * 100)}')
echo "MEMORY USAGE: $MEM"

# Disk Usage (%)
DISK=$(df -h / | awk 'NR==2{print $5}')
echo "DISK USAGE: $DISK"

# Top 3 Processes by CPU
echo "TOP 3 PROCESSES BY CPU:"
ps -eo pid,comm,%cpu --sort=-%cpu | head -n 4
echo "=============================="
echo ""
} >> /var/log/system_report.log