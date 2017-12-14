FROM ubuntu:17.04

RUN apt-get update -qq && \
    apt-get install -qq -y software-properties-common && \
    add-apt-repository -y ppa:certbot/certbot && \
    apt-get update -qq && \
    apt-get install -qq -y nginx python-certbot-nginx

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled /etc/nginx/sites-enabled
COPY docker-main /docker-main

VOLUME /etc/letsencrypt

EXPOSE 80 433
CMD ["sh", "/docker-main"]