#!/bin/sh

set -e

envsubst '$NGINX_ERROR_LOG_LEVEL' < /etc/nginx/nginx.conf.tmpl > /etc/nginx/nginx.conf

exec nginx -g "daemon off;"
