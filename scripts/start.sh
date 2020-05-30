#!/bin/bash

set -o pipefail
set -e

__here="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
__root="$__here/../"

. $__root/config.sh

export APP_PATH=$__root

###############################################################################

docker-compose --file docker/infra.yml up --build


