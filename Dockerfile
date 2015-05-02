FROM ubuntu:trusty
MAINTAINER Masashi Okumura <masao@classcat.com>

RUN apt-get update && apt-get upgrade \
  && apt-get install -y language-pack-en language-pack-en-base 

RUN locale-gen en_US.UTF-8
ENV LANG       en_US.UTF-8
ENV LC_ALL     en_US.UTF-8
RUN dpkg-reconfigure locales

RUN apt-get install -y supervisor

ADD assets/supervisord.conf /etc/supervisor/supervisord.conf
