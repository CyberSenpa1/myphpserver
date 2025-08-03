#!/bin/bash
# Запуск PHP-FPM (с автоматическим определением версии)
PHP_VERSION=$(php -v | head -n 1 | cut -d ' ' -f 2 | cut -d '.' -f 1-2)
service php${PHP_VERSION}-fpm start

# Запуск Nginx
exec nginx -g "daemon off;"