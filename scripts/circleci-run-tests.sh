#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ${DIR}/vars.sh

sudo lxc-attach -n ${WEB_CONTAINER_ID} -- bash -c "cd ${WEB_CONTAINER_PROJECT_DIR} && sh run-tests.sh"
