#!/usr/bin/env bash
# Perfil de producción CentOS (referencia). Ejecutar como root.
firewall-cmd --permanent --add-service=ntp
firewall-cmd --permanent --add-rich-rule='rule family=ipv4 source address=192.168.0.1 port port=1812-1813 protocol=udp accept'
# Opcional (HTTP/FTP, no desplegados en este laboratorio):
# firewall-cmd --permanent --add-service=http --add-service=https
# firewall-cmd --permanent --add-service=ftp --add-port=30000-31000/tcp
firewall-cmd --reload
restorecon -Rv /etc/raddb
