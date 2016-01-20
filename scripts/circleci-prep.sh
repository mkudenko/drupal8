#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ${DIR}/vars.sh

EXAMPLE_SETTINGS_FILE="${SITES_DIR}/example.settings.circleci.php"
TARGET_SETTINGS_FILE="${SITES_DIR}/default/settings.circleci.php"

cp ${EXAMPLE_SETTINGS_FILE} ${TARGET_SETTINGS_FILE}

chmod 777 "${SITES_DIR}/default/settings.php"

sudo lxc-attach -n ${WEB_CONTAINER_ID} -- bash -c "cd ${WEB_CONTAINER_PROJECT_DIR} && composer install --prefer-source --no-interaction"
sudo lxc-attach -n ${WEB_CONTAINER_ID} -- bash -c "cd ${WEB_CONTAINER_PROJECT_DIR} && ${SITE_INSTALLATION_CMD}"
