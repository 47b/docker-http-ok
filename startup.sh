#!/usr/bin/env bash

cp /etc/nginx/template/nginx-http.conf /etc/nginx/nginx.conf
sed -ri "s/%SERVER_PORT%/${SERVER_PORT}/" /etc/nginx/nginx.conf

nginx -g 'daemon off;'