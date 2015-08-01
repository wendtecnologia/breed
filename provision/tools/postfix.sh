#!/usr/bin/env bash
###
# Project: DEV4PHP
# Author: Walker de Alencar (@walkeralencar)
###

echo -n "[dev4php provisioning] Installing postfix, mailutils..."
debconf-set-selections <<< "postfix postfix/mailname string $HOSTNAME"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y postfix >> /vagrant/provision.log
service postfix reload >> /vagrant/provision.log
