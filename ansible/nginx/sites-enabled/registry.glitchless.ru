server {
	server_name registry.glitchless.ru;

	location / {
		proxy_pass http://registry;
	}
}