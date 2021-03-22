#!/bin/bash
set -e

rm -f /myapp/tmp/pids/server.pid

exec "$@"

rails db:create && rails db:migrate
