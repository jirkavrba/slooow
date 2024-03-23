#! /bin/bash

echo "Replacing PORT with $PORT"
envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

cat /etc/nginx/nginx.conf.template
cat /etc/nginx/nginx.conf

rm /etc/nginx/nginx.conf.template

echo "Starting nginx..."
nginx
