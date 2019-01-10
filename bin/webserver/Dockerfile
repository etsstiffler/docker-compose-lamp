FROM php:7.3.0-apache-stretch

RUN apt-get -y update --fix-missing
RUN apt-get upgrade -y

# Install important libraries
RUN apt-get -y install --fix-missing apt-utils build-essential git curl libcurl3 libcurl3-dev zip

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install xdebug
RUN pecl install xdebug-2.5.0
RUN docker-php-ext-enable xdebug

# Other PHP7 Extensions

RUN apt-get -y install libmcrypt-dev libsqlite3-dev libsqlite3-0 mysql-client libicu-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev zlib1g-dev

RUN docker-php-ext-install mcrypt pdo_mysql pdo_sqlite mysqli curl tokenizer json zip opcache php-apc

RUN docker-php-ext-install -j$(nproc) intl

RUN docker-php-ext-install mbstring

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ 
RUN docker-php-ext-install -j$(nproc) gd

# Enable apache modules
RUN a2enmod rewrite headers
