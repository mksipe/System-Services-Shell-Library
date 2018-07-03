#!/bin/sh
apt install snort -y
sudo apt install -y gcc libpcre3-dev zlib1g-dev libpcap-dev openssl libssl-dev libnghttp2-dev libdumbnet-dev bison flex libdnet
apt-get install openssh-server ethtool build-essential libpcap-dev libpcre3-dev libdumbnet-dev bison flex zlib1g-dev liblzma-dev openssl libssl-dev
wget https://www.snort.org/downloads/community/snort3-community-rules.tar.gz
gzip -d snort3-community-rules.tar.gz
tar -xf snort3-community-rules.tar
mv snort3-community-rules /bin/lib/sh/MK3S/data
cd /bin/lib/sh/MK3S/data/snort3-community-rules
include /bin/lib/sh/MK3S/data/snort3-community-rules/snort3-community.rules | sudo tee -a /etc/snort/snort.conf
systemctl enable snort
systemctl start snort
systemctl status snort
echo "Snort Installed"
echo "0 12 * * * snort" | sudo tee -a /etc/crontab