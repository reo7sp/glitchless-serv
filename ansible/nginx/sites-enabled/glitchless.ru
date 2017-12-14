server {
	server_name glitchless.ru;

	location / {
		proxy_pass http://rhythm_blast_frontend;
	}

	location ^~ /api {
		proxy_pass http://rhythm_blast_backend;
	}
}