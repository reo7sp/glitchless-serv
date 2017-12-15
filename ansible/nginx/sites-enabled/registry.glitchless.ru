server {
	server_name registry.glitchless.ru;

	location / {
		proxy_pass http://10.5.0.5:5000;
	}
}