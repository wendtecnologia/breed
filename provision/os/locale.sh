#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category OS
# @author   Walker de Alencar <@walkeralencar>
##

echo "[DEV4PHP] Pre-configuring locale..."
export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales