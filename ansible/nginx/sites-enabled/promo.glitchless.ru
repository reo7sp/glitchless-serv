server {
	server_name promo.glitchless.ru;

	location / {
		proxy_pass http://10.5.0.8;
	}
}