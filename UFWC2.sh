#!/bin/sh
sudo apt install ufw -y
ufw disable
ufw reset
ufw allow 80 
ufw reject telnet
ufw allow out 22
ufw allow 21
ufw allow 3307
ufw allow 53
ufw deny 23
ufw allow 137
ufw allow 138
ufw allow 139
ufw allow 445
ufw deny 1080
ufw deny 5554
ufw deny 2745
ufw deny 3127
ufw deny 4444
ufw deny 8866
ufw deny 9898
ufw deny 9988
ufw deny 12345
ufw deny 27374
ufw deny 31337
ufw allow 8200
touch defalultUFW.txt
cp /etc/ufw/before.rules >> /bin/lib/sh/MK3S/data/UFW.old
-A ufw-before-input -p icmp --icmp-type echo-request -j DROP >> /etc/ufw/before.rules
sudo ufw disable
sudo ufw enable
echo "1" | sudo tee /proc/sys/net/ipv4/icmp_echo_ignore_all
echo "net.ipv4.icmp_echo_ignore_all = 1" | sudo tee /etc/sysctl.conf
echo "1" | sudo tee /proc/sys/net/ipv4/conf/default/rp_filter
sudo sysctl -p
ufw enable
echo [SUCCESS] Backup.sh was ran by $USER on $(date -u) | tee -a /bin/lib/sh/MK3S/logs/MK3S.log
