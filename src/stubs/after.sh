#!/bin/sh

# If you would like to do some extra provisioning you may
# add any commands you wish to this file and they will
# be run after the Homestead machine is provisioned.

sudo sed -i 's/^error_reporting = E_ALL$/error_reporting = E_ALL \& ~E_DEPRECATED/' /etc/php5/fpm/php.ini

sudo apt-get install php5-memcache
sudo service nginx restart
sudo service php5-fpm restart
