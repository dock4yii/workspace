#
#--------------------------------------------------------------------------
# Image Setup
#--------------------------------------------------------------------------
#

FROM phusion/baseimage:focal-1.0.0

# Based on laradock/workspace (Mahmoud Zalt <mahmoud@zalt.me>)
LABEL maintainer="Ivan Terentev <terentev.pro@gmail.com>"

ENV DEBIAN_FRONTEND=noninteractive
RUN locale-gen en_US.UTF-8

ENV LANGUAGE=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV LC_CTYPE=en_US.UTF-8
ENV LANG=en_US.UTF-8
ENV TERM xterm

ARG DOCKER_PHP_VERSION=7.3

RUN set -eux \
    # Add the "PHP 7" ppa
    && apt-get install -y software-properties-common \
    && add-apt-repository -y ppa:ondrej/php \
    #
    #--------------------------------------------------------------------------
    # Software's Installation
    #--------------------------------------------------------------------------
    #
    && echo 'DPkg::options { "--force-confdef"; };' >> /etc/apt/apt.conf \
    # Install "PHP Extentions", "libraries", "Software's"
    && apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y --allow-downgrades --allow-remove-essential \
        --allow-change-held-packages \
        php${DOCKER_PHP_VERSION}-cli \
        php${DOCKER_PHP_VERSION}-common \
        php${DOCKER_PHP_VERSION}-curl \
        php${DOCKER_PHP_VERSION}-intl \
        php${DOCKER_PHP_VERSION}-json \
        php${DOCKER_PHP_VERSION}-xml \
        php${DOCKER_PHP_VERSION}-mbstring \
        php${DOCKER_PHP_VERSION}-mysql \
        php${DOCKER_PHP_VERSION}-pgsql \
        php${DOCKER_PHP_VERSION}-sqlite \
        php${DOCKER_PHP_VERSION}-sqlite3 \
        php${DOCKER_PHP_VERSION}-zip \
        php${DOCKER_PHP_VERSION}-bcmath \
        php${DOCKER_PHP_VERSION}-memcached \
        php${DOCKER_PHP_VERSION}-gd \
        php${DOCKER_PHP_VERSION}-dev \
        pkg-config \
        libcurl4-openssl-dev \
        libedit-dev \
        libssl-dev \
        libxml2-dev \
        xz-utils \
        libsqlite3-dev \
        rsync \
        sqlite3 \
        git \
        curl \
        vim \
        nano \
        tree \
        postgresql-client \
    && apt-get clean \
    #####################################
    # Composer:
    #####################################
    # Install composer and add its bin to the PATH.
    && curl -s http://getcomposer.org/installer | php \
    && echo "export PATH=${PATH}:/var/www/vendor/bin" >> ~/.bashrc \
    && mv composer.phar /usr/local/bin/composer