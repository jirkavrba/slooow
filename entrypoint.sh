#! /bin/bash

envsubst '$PORT' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf && rm /etc/nginx/nginx.conf.template
nginx
