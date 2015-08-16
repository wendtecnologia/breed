#!/usr/bin/env bash
###
# @package  DEV4PHP
# @author   Walker de Alencar <@walkeralencar>
##

. /vagrant/config
echo "[DEV4PHP] Development EnVironment for PHP v$VERSION"
hostname $HOSTNAME >> /vagrant/provision.log

cd /vagrant/provision
### OS - Operational System
. os/locale.sh      ## set locale to UTF-8
. os/swap.sh        ## enable swapfile
. os/update.sh      ## update & upgrade OS

### Tools
. tool/postfix.sh   ## install postfix
. tool/git.sh       ## install git
#. tool/svn.sh       ## install subversion

echo "[dev4php provisioning] Installing PHP..."
apt-get install -y php5-common php5-cli php5-fpm >> /vagrant/provision.log

echo "[dev4php provisioning] Installing PHP Extensions..."
apt-get install -y curl php5-curl php5-gd php5-imagick php5-intl php5-mcrypt php5-xdebug php5-xmlrpc >> /vagrant/provision.log

echo "[dev4php provisioning] Installing Composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer
