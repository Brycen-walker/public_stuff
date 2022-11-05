#!/bin/bash

dpkg -s avahi-daemon | grep -E '(Status:|not installed)'
dpkg -s cups | grep -E '(Status:|not installed)'
dpkg -s isc-dhcp-server | grep -E '(Status:|not installed)'
dpkg -s slapd | grep -E '(Status:|not installed)'
dpkg -s nfs-kernel-server | grep -E '(Status:|not installed)'
dpkg -s bind9 | grep -E '(Status:|not installed)'
dpkg -s vsftpd | grep -E '(Status:|not installed)'
dpkg -s apache2 | grep -E '(Status:|not installed)'
dpkg -s dovecot-imapd dovecot-pop3d | grep -E '(Status:|not installed)'
dpkg -s samba | grep -E '(Status:|not installed)'
dpkg -s squid | grep -E '(Status:|not installed)'
dpkg -s snmpd | grep -E '(Status:|not installed)'
dpkg -s rsync | grep -E '(Status:|not installed)'
dpkg -s nis | grep -E '(Status:|not installed)'
dpkg -s rsh-client | grep -E '(Status:|not installed)'
dpkg -s talk | grep -E '(Status:|not installed)'
dpkg -s telnet | grep -E '(Status:|not installed)'
dpkg -s ldap-utils | grep -E '(Status:|not installed)'
dpkg -s rpcbind | grep -E '(Status:|not installed)'

--------------------------------

systemctl stop avahi-daemon.service && systemctl stop avahi-daemon.socket && apt purge avahi-daemon -y
apt purge cups -y
apt purge isc-dhcp-server -y
apt purge slapd -y
apt purge nfs-kernel-server -y
apt purge bind9 -y
apt purge vsftpd -y
apt purge apache2 -y
apt purge dovecot-imapd dovecot-pop3d -y
apt purge samba -y
apt purge squid -y
apt purge snmpd -y	
apt purge telnetd -y
apt purge rsync -y
apt purge nis -y
apt purge rsh-client -y
apt purge talk -y
apt purge telnet -y
apt purge ldap-utils -y
apt purge rpcbind -y
