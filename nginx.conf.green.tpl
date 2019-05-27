worker_processes  1;

events {
    worker_connections  1024;
}


http {
    include       mime.types;
    default_type  application/octet-stream;


    sendfile        on;
    keepalive_timeout  65;

    server {
        listen       80;
        server_name  hello.world;


        #access_log  logs/host.access.log  main;

        location /api {
            proxy_pass http://localhost:8080;
        }


        #error_page  404              /404.html;

        # redirect server error pages to the static page /50x.html
        #
        error_page   500 502 503 504  /50x.html;
        location = /50x.html {
            root   html;
        }

    }

    include servers/*;
}