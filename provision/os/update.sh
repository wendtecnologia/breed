#!/usr/bin/env bash
###
# @package  breed
# @category OS
# @author   Walker de Alencar <@walkeralencar>
##

echo "[breed] Updating & Upgrading OS..."
apt-get update  >> /vagrant/provision.log
apt-get upgrade -y  >> /vagrant/provision.log
