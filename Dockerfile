FROM php:8.2-apache

# Copy your custom PHP source files to the web server directory
COPY . /var/www/html/

# Enable Apache rewrite module (useful for pretty URLs and routing)
RUN a2enmod rewrite

# Change ownership of the files to Apache's user
RUN chown -R www-data:www-data /var/www/html

# Expose port 80 for Render
EXPOSE 80
