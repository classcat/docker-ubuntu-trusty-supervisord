FROM ubuntu:trusty
MAINTAINER Masashi Okumura <masao@classcat.com>

RUN apt-get update && apt-get -y upgrade \
  && apt-get install -y language-pack-en language-pack-en-base 

#RUN locale-gen en_US.UTF-8
#ENV LANG       en_US.UTF-8
#ENV LC_ALL     en_US.UTF-8
#RUN dpkg-reconfigure locales
RUN update-locale LANG="en_US.UTF-8"

RUN apt-get install -y openssh-server supervisor 

RUN mkdir -p /var/run/sshd

RUN sed -ri "s/^PermitRootLogin\s+.*/PermitRootLogin yes/" /etc/ssh/sshd_config
# RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config

#WORKDIR /opt
#ADD assets/cc-init.sh /opt/cc-init.sh

ADD assets/supervisord.conf /etc/supervisor/supervisord.conf

EXPOSE 22

CMD echo "root:$password" | chpasswd; /usr/sbin/sshd -D
