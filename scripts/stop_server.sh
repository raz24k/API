#!/bin/bash
echo "Running ApplicationStop script"
# Stop the Spring Boot application
sudo pkill -f 'java -jar your-spring-boot-app.jar'
