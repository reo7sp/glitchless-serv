#!/bin/sh

certbot --nginx --noninteractive --agree-tos --email glitchless-letsencrypt@oleg.rocks

nginx -g "daemon off;"