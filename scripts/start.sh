#!/bin/bash

# Start PHP-FPM in the background
php-fpm &

# Run Laravel deployment script
bash /var/www/html/scripts/00-laravel-deploy.sh

# Start NGINX in the foreground
nginx -g "daemon off;"