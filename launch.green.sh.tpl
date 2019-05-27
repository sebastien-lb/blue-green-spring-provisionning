#!/bin/bash
file=$(ls /home/ubuntu/spring/green/ | grep .jar)
echo $file jar file is going to launch
/usr/bin/java -Dserver.port=8080 -jar /home/ubuntu/spring/green/$file
