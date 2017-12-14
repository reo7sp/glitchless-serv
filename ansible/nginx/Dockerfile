FROM ubuntu:17.04

RUN apt-get update && \
    apt-get install software-properties-common && \
    add-apt-repository ppa:certbot/certbot && \
    apt-get update && \
    apt-get install -qq -y nginx python-certbot-nginx 

COPY nginx.conf /etc/nginx/nginx.conf
COPY sites-enabled /etc/nginx/sites-enabled
COPY main.sh /main.sh

VOLUME /etc/letsencrypt

CMD ['/main.sh']