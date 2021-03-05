#!/bin/sh
# run_app.sh for TAKNUC Suite
#
# Author: Greg Albrecht W2GMD <oss@undef.net>
# Copyright: Copyright 2021 Orion Labs, Inc.
# License: Apache License, Version 2.0
# Source: https://github.com/ampledata/TAKNUC
#

set -e

echo "Inside run_app.sh"

echo "Starting node-red ..."

NODE_RED_USERDIR2=${NODE_RED_USERDIR:-/persist-data/node-red}

ARGS="-s ${NODE_RED_SETTINGS:-settings.js} \
--userDir ${NODE_RED_USERDIR2} \
-v"

echo "Calling node-red with args: '${ARGS}'"

FLOW_DIR=${NODE_RED_USERDIR2}/flows
if [ ! -d "${FLOW_DIR}" ]; then
  echo "Creating ${FLOW_DIR} ..."
  mkdir -p ${FLOW_DIR}
fi

./node_modules/.bin/node-red ${ARGS}

exit $?
