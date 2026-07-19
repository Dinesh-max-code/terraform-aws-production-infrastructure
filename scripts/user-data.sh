#!/bin/bash

dnf update -y

dnf install httpd -y

systemctl enable httpd

systemctl start httpd

echo "<h1>Terraform AWS Production Infrastructure</h1>" > /var/www/html/index.html

echo "<h2>Server Hostname: $(hostname)</h2>" >> /var/www/html/index.html