FROM ubuntu:16.04
MAINTAINER Dan Brown <ssd.dan.brown@googlemail.com>
ARG DEBIAN_FRONTEND=noninteractive
RUN set -xe
RUN apt-get update -yqq
RUN apt-get install git curl php7.0 php7.0-curl php7.0-mbstring php7.0-ldap php7.0-mcrypt php7.0-tidy php7.0-xml php7.0-zip php7.0-gd php7.0-mysql mcrypt -yqq
RUN curl -sS https://getcomposer.org/installer | php
RUN mv composer.phar /usr/local/bin/composer