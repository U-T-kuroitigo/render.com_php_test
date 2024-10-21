#!/bin/sh

# Nginxの設定ファイルを環境変数PORTに基づいて書き換え
envsubst '${PORT}' < /etc/nginx/conf.d/default.conf > /etc/nginx/conf.d/default.conf

# Nginxを起動
nginx

# PHP-FPMを起動
php-fpm
