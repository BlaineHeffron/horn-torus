#!/usr/bin/env bash
# Opens Nested Horn Torus Winder from a local web server on localhost.
# localhost counts as a secure origin, so the browser allows the microphone and remembers your permission.
set -euo pipefail
DIR="$(cd "$(dirname "$0")" && pwd)"
PORT="${HORN_TORUS_PORT:-9737}"
URL="http://localhost:$PORT/horn-torus.html"
if ! curl -fsS -o /dev/null "$URL" 2>/dev/null; then
  nohup python3 -m http.server "$PORT" --bind 127.0.0.1 --directory "$DIR" >/dev/null 2>&1 &
  for _ in $(seq 30); do curl -fsS -o /dev/null "$URL" 2>/dev/null && break; sleep 0.1; done
fi
xdg-open "$URL" >/dev/null 2>&1 &
