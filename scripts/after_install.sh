#!/bin/bash
echo "Running AfterInstall script"
# Add any post-installation steps, like changing file permissions
sudo chmod +Rf +x /home/ubuntu/deploy/
sudo chown -Rf ubuntu:ubuntu /home/ubuntu/deploy
