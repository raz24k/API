#!/bin/bash
echo "Running BeforeInstall script"

# Check if the application is running
if systemctl is-active --quiet springbootappcodedeploy; then
    echo "Stopping the running Spring Boot application"
    sudo systemctl stop springbootappcodedeploy
else
    echo "Spring Boot application is not running"
fi
