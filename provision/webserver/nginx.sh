#!/usr/bin/env bash
###
# @package  breed
# @category Webserver
# @author   Walker de Alencar <@walkeralencar>
##

echo "[breed] Installing NginX..."
apt-get install -y nginx >> /vagrant/provision.log

echo "[breed] NginX: setting vhost..."
cp /vagrant/provision/webserver/nginx/vhost_default /etc/nginx/sites-available/vhost_default >> /vagrant/provision.log
ln -s /etc/nginx/sites-available/vhost_default /etc/nginx/sites-enabled/
rm -rf /etc/nginx/sites-enabled/default
service nginx restart >> /vagrant/provision.log

