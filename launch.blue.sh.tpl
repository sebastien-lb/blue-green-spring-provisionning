#!/bin/bash
file=$(ls /home/ubuntu/spring/blue/ | grep .jar)
echo $file jar file is going to launch
/usr/bin/java -Dserver.port=8090 -jar /home/ubuntu/spring/blue/$file
