#!/bin/sh
if [ $(/usr/bin/id -u) -ne 0 ]; then
    echo "You must be root."
    exit
fi
# Version 4.6.21
DATE=$(date -u)
echo -e "Initializing Directories"
mkdir /Framework
chmod 755 *.sh
chmod 755 *.md
chmod 755 *.txt
chmod 755 *.bash_aliases 2> /dev/null
chmod 755 LICENSE
chmod 755 *.conf
chmod 755 *.pl
chmod 755 Makefile
chmod 755 changelog
chmod 755 config
chmod 755 control
chmod 755 postinst
chmod 755 postrm
chmod 755 preinst
chmod 755 prerm
chmod 755 *.log
chmod 755 *.c
chmod 755 *.py
chmod 755 *.db
chmod 755 *.ksh
chmod 755 *.service
chmod 755 *.map
chmod 755 *.rules
chmod 755 *.html
chmod 755 *.css
chmod 755 .git 
chmod 755 .github
chmod 755 .Archive
chmod 755 .Experimental
mv *.sh /Framework
mv *.md /Framework
mv *.txt /Framework
mv *.bash_aliases /Framework 2> /dev/null
mv LICENSE /Framework
mv *.conf /Framework
mv *.pl /Framework
mv conf /Framework
mv default /Framework
mv mod /Framework
mv changelog /Framework
mv config /Framework
mv control /Framework
mv postinst /Framework
mv postrm /Framework
mv preinst /Framework
mv prerm /Framework
mv *.log /Framework
mv Makefile /Framework
mv *.c /Framework
mv *.py /Framework
mv *.db /Framework
mv *.ksh /Framework
mv *.service /Framework
mv *.map /Framework
mv *.rules /Framework
mv *.html /Framework
mv *.css /Framework
sudo mv .git /Framework
sudo mv .github /Framework
sudo mv .Archive /Framework
sudo mv .Experimental /Framework
rm -r $(pwd)/Shell-Script-Lib
cd /Framework
wget -i src1.db
tar -xzf snort3-community-rules.tar.gz
touch Snort.db
cd snort3-community-rules
cat snort3-community.rules > /Framework/Snort.db
cd /Framework
cat ip-blacklist > badips.db
touch cve.db
cat allitems.txt > cve.db
touch wordlist.db
cd Probable-Wordlists
cd /Dictionary-Style/Technical_and_Default
cat Domains_ProbWL.txt >> /Framework/wordlist.db
cat Password_Default_ProbWl.txt >> /Framework/wordlist/.db
cat tld.txt >> /Framework/wordlist.db
cat Username_Default_ProbWL.txt >> /Framework/wordlist.db
cd /Framework/Probable-Wordlists/Real-Passwords
cat Top12Thousand-probable-v2.txt >> /Framework/wordlist.db
cat Top304Thousand-probable-v2.txt >> /Framework/wordlist.db
cat Top207-probable-v2.txt >> /Framework/wordlist.db
cd /WPA-Length
cat Top447-WPA-probable-v2.txt >> /Framework/wordlist.db
cat Top204Thousand-WPA-Probable-v2.txt >> /Framework/wordlist.db
cat Top4800-WPA-probable-v2.txt >> /Framework/wordlist.db
cat Top62-WPA-probable-v2.txt >> /Framework/wordlist.db
cd /Framework
touch auth.log.bak
cat /var/log/auth.log > auth.log.bak
touch messages.log.bak
cat /var/log/messages.log > messages.log.bak
touch boot.log.bak
cat /var/log/boot.log > boot.log.bak
touch dmesg.log.bak
cat /var/log/dmesg > dmesg.log.bak
touch kern.log.bak
cat /var/log/kern.log > kern.log.bak
touch faillog.log.bak
cat /var/log/faillog > faillog.log.bak
touch cron.log.bak
cat /var/log/cron > cron.log.bak
touch yum.log.bak
cat /var/log/yum.log > yum.log.bak
touch mail.log.bak
cat /var/log/mail.log > mail.log.bak
touch mysqld.log.bak 
cat /var/log/mysqld.log > mysqld.log.bak
mkdir /bin/lib 
mkdir /bin/lib/sh 
mkdir /bin/lib/sh/MK3S
mkdir /bin/lib/sh/MK3S/logs
mkdir /bin/lib/sh/MK3S/data
mkdir /bin/lib/sh/MK3S/data/logfiles
chmod 755 *.db
chmod 755 *.bak
chmod 755 *.html
chmod 755 *.css
mv *.log /bin/lib/MK3S/logs
mv *.sh /bin/lib/sh/MK3S
mv *.conf /bin/lib/sh/MK3S
mv *.pl
mv LICENSE /bin/lib/sh/MK3S
mv conf /bin/lib/sh/MK3S
mv default /bin/lib/sh/MK3S
mv mod /bin/lib/sh/MK3S
mv Makefile /bin/lib/sh/MK3S
mv changelog /bin/lib/sh/MK3S
mv config /bin/lib/sh/MK3S
mv control /bin/lib/sh/MK3S
mv postinst /bin/lib/sh/MK3S
mv postrm /bin/lib/sh/MK3S
mv preinst /bin/lib/sh/MK3S
mv prerm /bin/lib/sh/MK3S
mv *.c /bin/lib/sh/MK3S
mv *.py /bin/lib/sh/MK3S
mv *.db /bin/lib/sh/MK3S/data
mv *.ksh /bin/lib/sh/MK3S
mv *.service /bin/lib/sh/MK3S/data
mv *.map /bin/lib/sh/MK3S/data
mv *.rules /bin/lib/sh/MK3S/data
mv *.bak /bin/lib/sh/MK3S/data/logfiles
mkdir /bin/lib/sh/MK3S/data/ReferenceMaterial
mv CyberSecurityReference.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mv SSH.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mv Apache2.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mv PAM.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mv LOGINDEFS.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mv SAMBA.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mv VSFTPD.txt /bin/lib/sh/MK3S/data/ReferenceMaterial
mkdir /bin/lib/sh/MK3S/data/web
mv *.html /bin/lib/sh/MK3S/data/web
mv *.css /bin/lib/sh/MK3S/data/web
mkdir /bin/lib/sh/MK3S/maintain
sudo mv .git /bin/lib/sh/MK3S/maintain
sudo mv .github /bin/lib/sh/MK3S/maintain
sudo mv .Archive /bin/lib/sh/MK3S/
sudo mv .Experimental /bin/lib/sh/MK3S/
rm -r /Framework
touch /bin/lib/sh/MK3S/data/progs.txt
touch /bin/lib/sh/MK3S/data/AllProcesses.txt
compgen -c | sudo tee -a /bin/lib/sh/MK3S/data/progs.txt
ps -aux | sudo tee -a /bin/lib/sh/MK3S/data/AllProcesses.txt
chmod 511 /bin/lib/sh
touch /bin/lib/public/MK3S/Exploit-Search.txt
ln /bin/lib/sh/MK3S/data/web/HTSA.html /home/$USER/Desktop/HTSA
echo "No scans have been ran. To run a scan AS AN ADMINISTRATOR do (./bin/lib/sh/MK3S/HTSA.sh) then check back here." >> /bin/lib/public/MK3S/Exploit-Search.txt
clear
