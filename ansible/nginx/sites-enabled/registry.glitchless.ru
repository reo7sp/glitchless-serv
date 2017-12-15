server {
	server_name registry.glitchless.ru;

	location / {
		proxy_pass http://172.1.1.100:5000;
	}
}