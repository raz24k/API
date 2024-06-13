#!/bin/bash
echo "Running ApplicationStart script"
# Start the Spring Boot application
cd /home/ubuntu/
sudo nohup java -jar *.jar > /dev/null 2> /dev/null < /dev/null &
