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

echo "[dev4php provisioning] Updating & Upgrading OS..."
apt-get update  >> /vagrant/provision.log
apt-get upgrade -y  >> /vagrant/provision.log
