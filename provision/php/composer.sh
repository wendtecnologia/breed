#!/usr/bin/env bash
###
# @package  DEV4PHP
# @category PHP
# @author   Walker de Alencar <@walkeralencar>
##

echo "[DEV4PHP] Installing Composer..."
curl -sS https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer