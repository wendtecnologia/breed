#!/usr/bin/env bash
###
# @package  breed
# @category Tools
# @author   Walker de Alencar <@walkeralencar>
##

echo -n "[breed] Installing postfix, mailutils..."
debconf-set-selections <<< "postfix postfix/mailname string $HOSTNAME"
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'Internet Site'"
apt-get install -y postfix >> /vagrant/provision.log
service postfix reload >> /vagrant/provision.log
