#!/bin/bash
echo "Running ApplicationStart script"
# Start the Spring Boot application
cd /home/ec2-user/springbootapp
sudo nohup java -jar your-spring-boot-app.jar > /dev/null 2> /dev/null < /dev/null &
