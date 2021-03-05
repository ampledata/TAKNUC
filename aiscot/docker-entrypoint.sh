#!/bin/sh
# docker-entrypoint.sh for TAKNUC Containers
#
# Author: Greg Albrecht W2GMD <oss@undef.net>
# Copyright: Copyright 2021 Orion Labs, Inc.
# License: Apache License, Version 2.0
# Source: https://github.com/ampledata/TAKNUC
#

set -e

echo "Inside docker-entrypoint.sh"

if [ -z "${ENABLE_CONTAINER}" ]; then
  echo "ENABLE_CONTAINER not set, sleeping..."
  sleep 3600
  exit 0
fi

if [ "$1" = "app" ]; then
  ./run_app.sh
  exit $?
fi

echo "Executing '$@'"

exec "$@"
exit $?
