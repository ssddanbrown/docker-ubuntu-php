FROM ubuntu:18.04
MAINTAINER Dan Brown <ssd.dan.brown@googlemail.com>
ARG DEBIAN_FRONTEND=noninteractive
RUN set -xe
RUN apt-get update -yqq
RUN apt-get install git software-properties-common language-pack-en-base curl locales -yqq
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN apt-get install php7.2-cli php7.2-fpm php7.2-cgi php7.2-common php7.2-curl php7.2-mbstring php7.2-ldap php7.2-tidy php7.2-xml php7.2-zip php7.2-gd php7.2-mysql php7.2-sqlite3 php7.2-xdebug -yqq
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer