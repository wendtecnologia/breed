#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category OS
# @author   Walker de Alencar <@walkeralencar>
##

echo "[DEV4PHP] Pre-configuring locale..."
export DEBIAN_FRONTEND=noninteractive
echo "export LANGUAGE=en_US.UTF-8" >> /etc/.profile
echo "export LANG=en_US.UTF-8" >> /etc/.profile
echo "export LC_ALL=en_US.UTF-8" >> /etc/.profile
. /etc/.profile
locale-gen en_US.UTF-8   >> /vagrant/provision.log
dpkg-reconfigure locales >> /vagrant/provision.log
