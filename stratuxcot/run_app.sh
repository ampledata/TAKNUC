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

echo "Starting stratuxcot ..."

ARGS="-U ${COT_URL} -W ${STRATUX_WS}"

echo "Calling stratuxcot with args: '${ARGS}'"

stratuxcot ${ARGS}

exit $?
