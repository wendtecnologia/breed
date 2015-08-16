#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category Tools
# @author   Walker de Alencar <@walkeralencar>
##

echo -n "[DEV4PHP] Installing postfix, mailutils..."
debconf-set-selections <<< "postfix postfix/mailname string $HOSTNAME"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y postfix >> /vagrant/provision.log
service postfix reload >> /vagrant/provision.log
