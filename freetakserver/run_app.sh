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

echo "Making directories: "
mkdir -vp ${FTS_CERTS_PATH}
mkdir -vp ${FTS_CLIENT_CERTS_PATH}
mkdir -vp ${ExCheckMainPath}
mkdir -vp ${ExCheckFilePath}
mkdir -vp ${ExCheckChecklistFilePath}
mkdir -vp ${DataPackageFilePath}

FTS_ARGS="${FTS_ARGS} -AutoStart True -CoTIP 0.0.0.0 -RestAPIIP 0.0.0.0"

if [ -z "${FTS_DP_ADDRESS}" ]; then
  ARGS="${FTS_ARGS} -DataPackageIP 0.0.0.0"
else
  ARGS="${FTS_ARGS} -DataPackageIP ${FTS_DP_ADDRESS}"
fi

echo "Starting FTS with ARGS='${ARGS}'"

python3 -m FreeTAKServer.controllers.services.FTS ${ARGS}
