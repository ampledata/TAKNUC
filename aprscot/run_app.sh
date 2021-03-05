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

echo "Starting aprscot ..."

ARGS="-c ${APRS_CALLSIGN:-APRSCOT} \
-U ${COT_URL} \
-p ${APRS_PASSCODE:--1} \
-a ${APRS_HOST:-noam.aprs2.net}:${APRS_PORT:-14580}"
#-f=\"${APRS_FILTER:-m/50}\""

echo "Calling aprscot with args: '${ARGS}'"

aprscot ${ARGS} -f "f/SUNSET/50 p/W2GMD/NA1SS/RS0ISS f/W2GMD/1 f/W2GMD-9/2 f/W2GMD-4/1 f/W2GMD-O/1 ${APRS_FILTER:-m/50}"

exit $?
