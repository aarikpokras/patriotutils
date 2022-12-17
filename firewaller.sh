#!/bin/sh
read -p 'no> ' nono
sudo apt install gufw
printf "\033[1;32m" # Green
sudo ufw enable
printf "\033[1;33mPlease edit the common-password file and the login.defs file.\n"
sudo apt install firewalld
systemctl start firewalld && systemctl enable firewalld
grep -E "PASS_MIN_DAYS|PASS_MAX_DAYS" /etc/login.defs
