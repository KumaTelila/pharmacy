#!/bin/bash

cd /var/www/html

# Clear caches just to be safe
php artisan config:clear
php artisan cache:clear

# Run migration and seeding
php artisan migrate --force
php artisan db:seed --force
