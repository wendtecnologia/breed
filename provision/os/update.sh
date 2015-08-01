#!/usr/bin/env bash
###
# Project: DEV4PHP
# Author: Walker de Alencar (@walkeralencar)
###

echo "[dev4php provisioning] Updating & Upgrading OS..."
apt-get update  >> /vagrant/provision.log
apt-get upgrade -y  >> /vagrant/provision.log
