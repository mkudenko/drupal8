#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

source ${DIR}/vars.sh

docker exec -it ${WEB_CONTAINER_ID} bash
