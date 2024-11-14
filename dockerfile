FROM php:7.4-cli

COPY appPHP.php /var/www/html/

WORKDIR /var/www/html/

RUN mv /var/www/html/appPHP.php /var/www/html/index.php


EXPOSE 8080


CMD ["php", "-S", "0.0.0.0:8080"]
