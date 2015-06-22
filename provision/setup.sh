#!/usr/bin/env bash

# Server name
HOSTNAME="dev4php.local"

echo "Development EnVironment for PHP v0.1"
echo "                      based on WAS4P"

hostname $HOSTNAME >> /vagrant/provision.log
