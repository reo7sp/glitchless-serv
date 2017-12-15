server {
	server_name registry.glitchless.ru;

	client_max_body_size 0;

	location / {
		proxy_pass http://10.5.0.5:5000;
	}
}