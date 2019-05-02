FROM ubuntu:18.04
RUN apt update && apt install php php-mbstring php-gd php-pdo php-xml
COPY ./* /var/phpunit
CMD cd /var/phpunit && php artisan serve --port 8080
