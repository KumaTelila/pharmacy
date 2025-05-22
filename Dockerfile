FROM php:8.2-fpm

# Install system dependencies, including Node.js and npm
RUN apt-get update && apt-get install -y \
    libpq-dev \
    libzip-dev \
    libpng-dev \
    unzip \
    git \
    nginx \
    curl \
    && curl -sL https://deb.nodesource.com/setup_18.x | bash - \
    && apt-get install -y nodejs \
    && docker-php-ext-install pdo_pgsql zip gd \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Copy application files
COPY . /var/www/html
WORKDIR /var/www/html

# Install PHP dependencies
RUN composer install --no-dev --optimize-autoloader

# Install Node.js dependencies and compile assets
RUN npm install && npm run prod

# Copy NGINX configuration
COPY conf/nginx/nginx-site.conf /etc/nginx/sites-available/default

# Ensure NGINX sites-enabled directory exists and link configuration
RUN mkdir -p /etc/nginx/sites-enabled && \
    rm -f /etc/nginx/sites-enabled/default && \
    ln -sf /etc/nginx/sites-available/default /etc/nginx/sites-enabled/default

# Set permissions
RUN chown -R www-data:www-data /var/www/html/storage /var/www/html/bootstrap/cache
RUN chmod -R 775 /var/www/html/storage /var/www/html/bootstrap/cache

# Copy startup script
COPY scripts/start.sh /start.sh
RUN chmod +x /start.sh

# Expose port 80 for HTTP traffic
EXPOSE 80

# Run the startup script
CMD ["/start.sh"]