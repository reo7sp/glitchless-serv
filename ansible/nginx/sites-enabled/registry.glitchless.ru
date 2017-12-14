server {
	#server_name registry.glitchless.ru;
	server_name glitchless.ru;

	location / {
		proxy_pass http://registry;
	}
}