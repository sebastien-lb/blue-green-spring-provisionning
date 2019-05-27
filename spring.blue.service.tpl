[Unit]
Description=Spring blue application
After=syslog.target

[Service]
User=ubuntu
ExecStart=/home/ubuntu/spring/blue/launch.sh

[Install]
WantedBy=multi-user.target