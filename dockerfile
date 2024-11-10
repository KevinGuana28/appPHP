# Usamos la imagen base de PHP 7.4
FROM php:7.4-cli

# Copiar el archivo PHP al contenedor
COPY appPHP.php /var/www/html/

# Establecer el directorio de trabajo
WORKDIR /var/www/html/

# Renombrar el archivo a index.php
RUN mv /var/www/html/appPHP.php /var/www/html/index.php


# Exponer el puerto 8080
EXPOSE 8080

# Ejecutar el servidor embebido de PHP
CMD ["php", "-S", "0.0.0.0:8080"]
