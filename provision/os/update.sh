#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category OS
# @author   Walker de Alencar <@walkeralencar>
##

echo "[DEV4PHP] Updating & Upgrading OS..."
apt-get update  >> /vagrant/provision.log
apt-get upgrade -y  >> /vagrant/provision.log
