#!/bin/bash

#
# Contains variables used by other scripts.
#

WEB_CONTAINER_NAME=tc_d8_web

WEB_CONTAINER_ID=$(docker-compose ps -q ${WEB_CONTAINER_NAME})

WEB_CONTAINER_PROJECT_DIR="/var/www/html"

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

SITES_DIR="${DIR}/../webroot/sites"

SITE_INSTALLATION_CMD="drush si config_installer --account-name=admin --account-pass=password --account-mail=admin@example.com --site-mail=admin@example.com --site-name='Drupal 8' -y"
