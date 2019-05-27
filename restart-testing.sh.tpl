#!/bin/bash
inactive_now=$(ls -l ./ | grep waiting)
if [[ "$inactive_now" == *blue ]]
then
  waiting="blue"
else
  waiting="green"
fi

service spring-$waiting restart
