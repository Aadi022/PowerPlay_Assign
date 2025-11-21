# Part 1: Environment Setup

### 1. Launch EC2 Instance
- A **t2.micro Ubuntu EC2** instance (Free Tier eligible) was launched using the AWS Management Console.

### 2. Connect to EC2 via SSH
Connected from WSL using the downloaded SSH key:

```bash
ssh -i "assign.pem" ubuntu@ec2-34-203-106-114.compute-1.amazonaws.com
```
### 3. Created a new user devops_intern
```bash
sudo adduser devops_intern
```
### 4. Granted passwordless sudo access to devops_intern using visudo
```bash
sudo visudo
```
Added line at the end:
```bash
devops_intern ALL=(ALL) NOPASSWD:ALL
```
### 5. Changed server hostname to include the name
```bash
sudo hostnamectl set-hostname aaditya-devops
exec bash
```
### 6. Switched to the new user and verified sudo:
```bash
sudo su - devops_intern
whoami
sudo whoami
```
---
## Deliverables
The required deliverables for Part-1 is in [Deliverable.png](Deliverable.png)

## Task Commands
The required terminal commands for Part-1 is in [Terminal.png](Terminal.png)
