THRESHOLD=80
DISK_USE=$(df -h / | awk 'NR==2 {gsub("%",""); print $5}')

if [ "$DISK_USE" -gt "$THRESHOLD" ]; then
  MESSAGE="⚠️ ALERT: Disk usage is ${DISK_USE}% on $(hostname)"
  aws sns publish \
    --topic-arn arn:aws:sns:us-east-1:396913706461:disk-alert-topic \
    --message "$MESSAGE" \
    --region us-east-1
fi
