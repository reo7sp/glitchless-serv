server {
	server_name glitchless.ru;

	location / {
		proxy_pass http://10.5.0.6;
	}

	location ^~ /api {
		proxy_pass http://10.5.0.7;
	}

	location /game/ {
		proxy_pass http://10.5.0.7;
		proxy_http_version 1.1;
		proxy_set_header Upgrade $http_upgrade;
		proxy_set_header Connection "upgrade";
	}
}