# Part 4: AWS Integration

### 1. Installed AWS CLI v2
```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
aws --version
```


### 2. Created the CloudWatch Logs log group
```bash
aws logs create-log-group \
  --log-group-name /devops/intern-metrics \
  --region us-east-1
```

### 3. Created a log stream inside the log group
```bash
aws logs create-log-stream \
  --log-group-name /devops/intern-metrics \
  --log-stream-name system-report-stream \
  --region us-east-1
```

### 4. Uploaded lines from /var/log/system_report.log to CloudWatch
Uploaded lines from /var/log/system_report.log to CloudWatch using aws logs put-log-events in a shell loop, skipping empty lines and using 
the nextSequenceToken returned from each call. The CLI commands for this can be found in [CLI_Upload.png](CLI_Upload.png).


### 5. Verified in AWS Console
1) Opened CloudWatch → Logs → Log groups.
2) Selected /devops/intern-metrics.
3) Opened system-report-stream to view the uploaded log entries.

---
## Deliverables
The required deliverables for Part3-
1) The AWS CLI command(s) used for the upload- [CLI_Upload.png](CLI_Upload.png)
2) Screenshot showing the log data in CloudWatch Logs- [Console_LogGroup.png](Console_LogGroup.png) and [Console_Logs.png](Console_Logs.png)
