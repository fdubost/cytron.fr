FROM stackbrew/debian:wheezy

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update
RUN apt-get install -y nginx

ADD docker/default /etc/nginx/sites-enabled/default

ADD . /var/www

EXPOSE 80
CMD /etc/init.d/nginx start && /bin/bash
