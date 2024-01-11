#!/bin/bash
set -e

PHP_WWW_PATH="/var/www/app"

# Create application folders and set permissions
mkdir -p $PHP_WWW_PATH/var/cache $PHP_WWW_PATH/var/log $PHP_WWW_PATH/var/log/supervisor $PHP_WWW_PATH/var/log/rabbitmq
chmod -R 777 $PHP_WWW_PATH/var/cache $PHP_WWW_PATH/var/log $PHP_WWW_PATH/var/log/supervisor $PHP_WWW_PATH/var/log/rabbitmq

# Default permissions for owning user, group, other
#setfacl -d -m u::rwx $PHP_WWW_PATH/var/cache $PHP_WWW_PATH/var/log $PHP_WWW_PATH/var/log/supervisor $PHP_WWW_PATH/var/log/rabbitmq
#setfacl -d -m g::rwx $PHP_WWW_PATH/var/cache $PHP_WWW_PATH/var/log $PHP_WWW_PATH/var/log/supervisor $PHP_WWW_PATH/var/log/rabbitmq
#setfacl -d -m o::rwx $PHP_WWW_PATH/var/cache $PHP_WWW_PATH/var/log $PHP_WWW_PATH/var/log/supervisor $PHP_WWW_PATH/var/log/rabbitmq
