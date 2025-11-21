# Part 2: Simple Web Service Setup

### 1. Installed Nginx
```bash
sudo apt update
sudo apt install nginx -y
sudo systemctl start nginx
sudo systemctl enable nginx
```

### 2. Retrieved metadata and uptime using IMDSv2:
Get Token:

```bash
TOKEN=$(curl -X PUT "http://169.254.169.254/latest/api/token" \
  -H "X-aws-ec2-metadata-token-ttl-seconds: 21600")
```

Get instance ID:

```bash
INSTANCE_ID=$(curl -H "X-aws-ec2-metadata-token: $TOKEN" \
  http://169.254.169.254/latest/meta-data/instance-id)
```

Get uptime:

```bash
UPTIME=$(uptime -p)
```

### 3. Created a simple HTML page at /var/www/html/index.html (containing name, instance ID, and uptime) using the variables above:
```bash
sudo bash -c "cat > /var/www/html/index.html" <<EOF
<html>
  <body style='font-family: Arial;'>
    <h2>DevOps Task</h2>
    <p><b>Name:</b> Aaditya Mehta</p>
    <p><b>Instance ID:</b> $INSTANCE_ID</p>
    <p><b>Server Uptime:</b> $UPTIME</p>
  </body>
</html>
EOF
```
### 4. Restarted Nginx:
```bash
sudo systemctl restart nginx
```

### 5. Accessed the page from browser
URL- http://34.203.106.114

---
## Deliverables
The required deliverables for Part-2 is in [Web.png](Web.png)

## Task Commands
The required terminal commands for Part-2 is in [Terminal.png](Terminal.png)
