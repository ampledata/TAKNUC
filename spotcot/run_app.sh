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

echo "Starting spotcot ..."

ARGS="-k ${SPOT_API_KEY} -U ${COT_HOST:-127.0.0.1}:${COT_PORT:-8087}"

echo "Calling spotcot with args: '${ARGS}'"

spotcot ${ARGS}

exit $?
