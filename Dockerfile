# Define a imagem base
FROM php:7.4-apache

# Atualiza os pacotes e instala dependências
RUN apt-get update \
    && apt-get install -y libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Copia o código fonte para o contêiner
COPY . /var/www/html/

# Define o diretório de trabalho
WORKDIR /var/www/html

# Habilita o módulo rewrite do Apache
RUN a2enmod rewrite

# Define a porta que o contêiner expõe
EXPOSE 80

# Comando para iniciar o servidor Apache
CMD ["apache2-foreground"]
