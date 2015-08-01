#!/usr/bin/env bash
###
# Project: DEV4PHP
# Author: Walker de Alencar (@walkeralencar)
###

echo "[dev4php provisioning] Pre-configuring locale..."
export DEBIAN_FRONTEND=noninteractive
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales