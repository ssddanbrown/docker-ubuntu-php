FROM ubuntu:18.04
MAINTAINER Dan Brown <ssd.dan.brown@googlemail.com>
RUN set -xe
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update -yqq
RUN apt-get install git software-properties-common language-pack-en-base curl locales -yqq
RUN add-apt-repository ppa:ondrej/php
RUN apt-get update -yqq
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN apt-get install php7.3-cli php7.3-fpm php7.3-cgi php7.3-common php7.3-curl php7.3-mbstring php7.3-ldap php7.3-tidy php7.3-xml php7.3-zip php7.3-gd php7.3-mysql php7.3-sqlite3 php7.3-bcmath php7.3-xdebug -yqq
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer