#!/bin/bash

if [ -z "$LISTEN_PORT" ]; then
    LISTEN_PORT="80"
fi

if [ -z "$REDIRECT_URL" ]; then
    REDIRECT_URL=""
fi

sed -i 's=__listen_port__='"$LISTEN_PORT"'=g' /etc/nginx/conf.d/default.conf
sed -i 's=__redirect_url__='"$REDIRECT_URL"'=g' /etc/nginx/conf.d/default.conf

nginx -g 'daemon off;'
