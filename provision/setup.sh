#!/usr/bin/env bash
###
# @package  breed
# @author   Walker de Alencar <@walkeralencar>
##

. /vagrant/config
echo "[breed] BReed Easy Environment for Developers v$VERSION"
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

### Webserver
#. webserver/apache.sh ## install apache
. webserver/nginx.sh  ## install nginx

### PHP
. php/basic.sh      ## install php5
#. php/dev.sh        ## install php5 module development
. php/extensions.sh ## install php5 extensions
. php/composer.sh   ## install composer globally (depends extensions.sh)

echo "[breed] Completed"