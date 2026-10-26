#!/bin/sh
ping -c 4 postgres
exec /docker-entrypoint.sh nginx -g "daemon off;"
