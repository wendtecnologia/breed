#!/usr/bin/env bash
###
# @package  breed
# @category PHP
# @author   Walker de Alencar <@walkeralencar>
##

echo "[breed] Installing Composer..."
curl -sS -4 https://getcomposer.org/installer | php
mv composer.phar /usr/local/bin/composer