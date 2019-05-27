[Unit]
Description=Spring green application
After=syslog.target

[Service]
User=ubuntu
ExecStart=/home/ubuntu/spring/green/launch.sh

[Install]
WantedBy=multi-user.target