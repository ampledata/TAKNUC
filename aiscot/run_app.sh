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

echo "Starting aiscot ..."

ARGS="-U ${COT_URL} -p ${AIS_PORT:-5050}"

echo "Calling aiscot with args: '${ARGS}'"

aiscot ${ARGS}
