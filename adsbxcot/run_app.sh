#!/bin/sh

set -e

echo "Inside run_app.sh"

echo "Starting adsbxcot ..."

ARGS="-U ${COT_URL} -A ${ADSBX_URL} -X ${ADSBX_KEY} -I ${INTERVAL}"

echo "Calling adsbxcot with args: '${ARGS}'"

adsbxcot ${ARGS}

exit $?
