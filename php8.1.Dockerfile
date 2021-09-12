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
RUN apt-get install php8.1-cli php8.1-fpm php8.1-cgi php8.1-common php8.1-curl php8.1-mbstring php8.1-ldap php8.1-tidy php8.1-xml php8.1-zip php8.1-gd php8.1-mysql php8.1-sqlite3 php8.1-bcmath php8.1-xdebug -yqq
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer