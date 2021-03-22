#!/bin/bash
set -e

rm -f /app/tmp/pids/server.pid

exec "$@"

rails db:create && rails db:migrate
