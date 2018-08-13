#!/bin/sh
sudo yum install -y httpd
echo "<html><h1>Hello from STAGE</h2></html>" > /var/www/html/index.html
sudo service httpd start
