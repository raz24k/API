#!/bin/bash
echo "Running ValidateService script"
# Validate the service by checking if the application is running
if pgrep -f 'java -jar your-spring-boot-app.jar'; then
    echo "Application is running"
else
    echo "Application is not running"
    exit 1
fi
