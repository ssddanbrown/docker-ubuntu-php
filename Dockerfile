FROM ubuntu:16.04
MAINTAINER Dan Brown <ssd.dan.brown@googlemail.com>
RUN set -xe
RUN export DEBIAN_FRONTEND=noninteractive
RUN apt-get update -yqq
RUN apt-get install git software-properties-common language-pack-en-base python-software-properties curl mcrypt locales -yqq
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LC_ALL en_US.UTF-8
RUN add-apt-repository -y ppa:ondrej/php
RUN apt-get update -yqq
RUN apt-get install php7.1 php7.1-curl php7.1-mbstring php7.1-ldap php7.1-mcrypt php7.1-tidy php7.1-xml php7.1-zip php7.1-gd php7.1-mysql php-xdebug -yqq
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer
