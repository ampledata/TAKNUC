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

FTS_ARGS="${FTS_ARGS} --config gunicorn-cfg.py run:app"

echo "Starting FTS-UI with ARGS='${FTS_ARGS}'"

export SQLALCHEMY_DATABASE_URI=sqlite:////persist-data/freetakserver/FTSDataBase.db
gunicorn ${FTS_ARGS}
