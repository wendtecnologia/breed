#!/usr/bin/env bash
###
# @package  breed
# @category PHP
# @author   Walker de Alencar <@walkeralencar>
##

echo "[breed] Installing PHP5 Extensions: curl, gd, imagick, intl, mycrypt, xdebug, xmlrpc..."
apt-get install -y curl php5-curl php5-gd php5-imagick php5-intl php5-mcrypt php5-xdebug php5-xmlrpc >> /vagrant/provision.log
