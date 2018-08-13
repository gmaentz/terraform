#! /bin/bash -v

sudo su
yum update -y
yum install -y nginx > /tmp/nginx.log
service nginx start

