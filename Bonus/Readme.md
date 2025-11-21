# Bonus: SNS Disk Usage Email Alert

This bonus task adds an SNS-based alert that sends an email when disk usage on the EC2 instance exceeds 80%.

### 1. Created an SNS topic for disk alerts:
   ```bash
   aws sns create-topic \
     --name disk-alert-topic \
     --region us-east-1
### 2. Connect to EC2 via SSH
Connected from WSL using the downloaded SSH key:

```bash
ssh -i "assign.pem" ubuntu@ec2-34-203-106-114.compute-1.amazonaws.com
```
### 2. Subscribed the email address to the SNS topic
```bash
aws sns subscribe \
  --topic-arn arn:aws:sns:us-east-1:396913706461:disk-alert-topic \
  --protocol email \
  --notification-endpoint aadityamta@gmail.com \
  --region us-east-1
```
### 3. Created a disk usage alert script that:
The shell script is in [disk_alert.sh](disk_alert.sh)
- Checks the root (/) disk usage.
- Compares it against a threshold of 80%.
- Publishes a message to the SNS topic if usage is greater than the threshold.


Commands used to create and configure the script:
```bash
sudo nano /usr/local/bin/disk_alert.sh
sudo chmod +x /usr/local/bin/disk_alert.sh
```

### 4. Configured a cron job to run the disk alert script every 5 minutes
```bash
sudo crontab -e
```
Further Added-
```bash
*/5 * * * * /usr/local/bin/disk_alert.sh
```

### 5. Tested the SNS setup by manually publishing a test message
```bash
aws sns publish \
  --topic-arn arn:aws:sns:us-east-1:396913706461:disk-alert-topic \
  --message "Test alert from EC2 instance" \
  --region us-east-1
```
SNS Mail: [Deliverable.png](Deliverable.png)
---
## Deliverables
SNS Mail: [Deliverable.png](Deliverable.png)

## Task Commands
The required terminal commands for Bonus is in [Terminal.png](Terminal.png)
