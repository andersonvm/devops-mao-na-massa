#!/usr/bin/env bash
echo "Instalando o Apache e configurando..."
sudo yum -y update kernel
yum install -y httpd >/dev/null 2>&1
cp -R /vagrant/html/* /var/www/html/
service httpd start