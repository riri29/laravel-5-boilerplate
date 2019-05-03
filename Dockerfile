FROM phpstorm/php-73-apache-xdebug-27
RUN apt update && apt install unzip -y
ADD laravel.zip /var/phpunit
WORKDIR /var/phpunit
RUN unzip -o laravel.zip
CMD php artisan serve --port 8080
