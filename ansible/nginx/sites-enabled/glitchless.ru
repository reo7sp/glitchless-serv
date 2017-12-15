server {
	server_name glitchless.ru;

	location / {
		proxy_pass http://10.5.0.6;
	}

	location ^~ /api {
		proxy_pass http://10.5.0.7;
	}
}