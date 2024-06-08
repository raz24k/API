#!/bin/bash
echo "Running AfterInstall script"
# Add any post-installation steps, like changing file permissions
sudo chmod +x /home/ec2-user/springbootapp/*.jar
