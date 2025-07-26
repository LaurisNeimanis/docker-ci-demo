# 1) Builder stage: use Composer image
FROM composer:2 AS builder
WORKDIR /app

# Copy only what’s needed for install
COPY composer.json composer.lock ./
RUN composer install --no-dev --optimize-autoloader

# Copy your application sources
COPY src/ /app/src/

# 2) Final stage: use PHP/Apache
FROM php:8.2-apache
WORKDIR /var/www/html

# Copy the built vendor folder and your src
COPY --from=builder /app/vendor/ ./vendor/
COPY --from=builder /app/src/ ./

EXPOSE 80
