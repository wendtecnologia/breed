#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category OS
# @author   Walker de Alencar <@walkeralencar>
##

echo "[DEV4PHP] Configuring SWAP..."
grep -q "swapfile" /etc/fstab
if [ $? -ne 0 ]; then
  fallocate -l $SWAPSIZE /swapfile >> /vagrant/provision.log
  chmod 600 /swapfile >> /vagrant/provision.log
  mkswap /swapfile >> /vagrant/provision.log
  swapon /swapfile >> /vagrant/provision.log
  echo '/swapfile none swap defaults 0 0' >> /etc/fstab
fi