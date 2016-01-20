#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ${DIR}/vars.sh

chmod 444 "${SITES_DIR}/default/settings.php"
