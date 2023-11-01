#!/bin/bash -eu

# Build the frontend
yarn run build

# Build the dashboards
make build-dashboards

# Fix permissions (webpack sometimes outputs files with mode = 666 due to reasons unknown (race condition/umask issue afaics))
chmod -R g-w,o-w dist
