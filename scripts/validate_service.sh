bashCopy code
#!/bin/bash
# ValidateService script
# Check if the application is running
if pgrep java > /dev/null
then
   echo "Application is running"
   exit 0
else
   echo "Application is NOT running"exit 1
fi
