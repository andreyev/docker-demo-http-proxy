FROM php:7.0.22-apache

RUN a2enmod proxy
RUN a2enmod proxy_http
RUN a2enmod proxy_html

COPY ./conf/api.conf /etc/apache2/sites-enabled/
RUN /etc/init.d/apache2 stop
CMD apachectl -DFOREGROUND
