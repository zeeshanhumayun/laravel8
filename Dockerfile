# Base image
FROM php:8.1-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip


# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

COPY . /var/www/html

RUN php --version
RUN echo 'butt sahib here'
# RUN composer install
RUN composer --version
RUN echo 'printing $testEnvVar nice yaar'
RUN cp .env.example .env
RUN php artisan key:generate

WORKDIR /var/www/html/

EXPOSE 80

# RUN php artisan serve

ENV testEnvVar="php laravel"