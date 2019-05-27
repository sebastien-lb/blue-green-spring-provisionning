#!/bin/bash
inactive_now=$(ls -l ./ | grep testing)
if [[ "$inactive_now" == *blue ]]
then
  inactive="blue"
  active="green"
else
  inactive="green"
  active="blue"
fi

echo $inactive is testing will be active
echo $active is active will be testing

#remove current links
rm ./available
rm ./testing
rm -f /etc/nginx/nginx.conf
#create new links with the active/inactive reversed
ln -s ./$inactive ./available
ln -s ./$active ./testing
ln -s /home/ubuntu/spring/$active/nginx.conf /etc/nginx/nginx.conf
#reload the http server
service nginx reload
echo swap completed $active is active