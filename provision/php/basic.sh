#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category PHP
# @author   Walker de Alencar <@walkeralencar>
##

echo "[DEV4PHP] Installing PHP5..."
apt-get install -y php5-common php5-cli php5-fpm >> /vagrant/provision.log
