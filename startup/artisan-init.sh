#!/bin/bash

echo "🚀 Running artisan migrate and seed..."
php artisan migrate --force
php artisan db:seed --force
