FROM ubuntu:20.04
MAINTAINER Dan Brown <ssd.dan.brown@googlemail.com>
ARG DEBIAN_FRONTEND=noninteractive
RUN set -xe
RUN apt-get update -yqq
RUN apt-get install git software-properties-common language-pack-en-base curl locales -yqq
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update -yqq
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN apt-get install php8.0-cli php8.0-fpm php8.0-cgi php8.0-common php8.0-curl php8.0-mbstring php8.0-ldap php8.0-tidy php8.0-xml php8.0-zip php8.0-gd php8.0-mysql php8.0-sqlite3 php8.0-bcmath php8.0-xdebug -yqq
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer