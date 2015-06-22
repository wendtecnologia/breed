#!/usr/bin/env bash

# Server name
HOSTNAME="dev4php.local"

echo "Development EnVironment for PHP v0.1"
echo "          [DEV4PHP] is based on WAS4P"

hostname $HOSTNAME >> /vagrant/provision.log

echo "[dev4php provisioning] Pre-configuring..."
export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales

echo "[vagrant provisioning] Configuring SWAP..."
grep -q "swapfile" /etc/fstab
if [ $? -ne 0 ]; then
fallocate -l 1024M /swapfile >> /vagrant/provision.log
chmod 600 /swapfile >> /vagrant/provision.log
mkswap /swapfile >> /vagrant/provision.log
swapon /swapfile >> /vagrant/provision.log
echo '/swapfile none swap defaults 0 0' >> /etc/fstab
fi

echo "[dev4php provisioning] Updating & Upgrading OS..."
apt-get update  >> /vagrant/provision.log
apt-get upgrade -y  >> /vagrant/provision.log

echo -n "[vagrant provisioning] Installing postfix, mailutils..."
debconf-set-selections <<< "postfix postfix/mailname string $HOSTNAME"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y postfix >> /vagrant/provision.log
service postfix reload >> /vagrant/provision.log

