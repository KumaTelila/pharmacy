FROM richarvey/nginx-php-fpm:3.1.6

COPY . .

# Laravel config
# ENV SKIP_COMPOSER 1
ENV WEBROOT /var/www/html/public
ENV PHP_ERRORS_STDERR 1
ENV RUN_SCRIPTS 1
ENV REAL_IP_HEADER 1
ENV APP_ENV production
ENV APP_DEBUG false
ENV LOG_CHANNEL stderr
ENV COMPOSER_ALLOW_SUPERUSER 1

# Make sure artisan-init.sh is executable
RUN chmod +x /var/www/html/startup/artisan-init.sh

# Run migration/seed script, then start Laravel
CMD ["/bin/bash", "-c", "/var/www/html/startup/artisan-init.sh && /start.sh"]
