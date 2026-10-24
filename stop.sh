#!/usr/bin/env bash
# Stops the local server started by start.sh.
pkill -f "http.server ${HORN_TORUS_PORT:-9737} --bind 127.0.0.1" && echo "Stopped." || echo "Not running."
