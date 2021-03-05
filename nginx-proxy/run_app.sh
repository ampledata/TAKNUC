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

echo "Starting nginx"

sed s/%%TOPO_HOST%%/${TOPO_HOST}/g < /nginx-proxy/nginx.conf.template > /nginx-proxy/nginx.conf.template.1
sed s/%%MESHMAP_HOST%%/${MESHMAP_HOST}/g < /nginx-proxy/nginx.conf.template.1 > /nginx-proxy/nginx.conf

nginx -g 'daemon off;' -c /nginx-proxy/nginx.conf
