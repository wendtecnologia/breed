#!/usr/bin/env bash
###
# @package  breed
# @category PHP
# @author   Walker de Alencar <@walkeralencar>
##

echo "[breed] Installing PHP5..."
apt-get install -y php5-common php5-cli php5-fpm >> /vagrant/provision.log
