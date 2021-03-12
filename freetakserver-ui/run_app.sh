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

FTS_ARGS="${FTS_ARGS} -AutoStart True -CoTIP 0.0.0.0 -RestAPIIP 0.0.0.0"

if [ -z "${FTS_DATA_PACKAGE_HOST}" ]; then
  ARGS="${FTS_ARGS} -DataPackageIP 0.0.0.0"
else
  ARGS="${FTS_ARGS} -DataPackageIP ${FTS_DATA_PACKAGE_HOST}"
fi

echo "Starting FTS with ARGS='${ARGS}'"

#python3 -m FreeTAKServer.controllers.services.FTS ${ARGS}

# "gunicorn", "--config", "gunicorn-cfg.py", "run:app"

gunicorn --config gunicorn-cfg.py run:app
