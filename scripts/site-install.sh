#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ${DIR}/vars.sh

chmod 777 "$DIR/../webroot/sites/default/settings.php"

docker exec -it ${WEB_CONTAINER_ID} ${SITE_INSTALLATION_CMD}

sh ${DIR}/fix-file-permissions.sh
