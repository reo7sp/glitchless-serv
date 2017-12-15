server {
	server_name glitchless.ru;

	location / {
		proxy_pass http://172.1.1.101;
	}

	location ^~ /api {
		proxy_pass http://172.1.1.102;
	}
}