# dev.tf56.com server configuration

# server for old version codes
server {
    listen 80;

    # log path: /usr/share/nginx/logs
    access_log logs/dev.tf56.com.access.log;
    error_log logs/dev.tf56.com.error.log;

    # server name
    server_name dev.tf56.com;
        
    # list files under directories
    autoindex on;
        
    # root
    root /home/jchan/b2b/front-b2b-v1.2.2/dist;
    index index.html;

    location /treasureWeb {
        proxy_pass http://10.7.28.14;
    }
}

# server for published files
server {
    listen 80;
    server_name publish.tf56.com;
    access_log logs/publish.tf56.access.com.log;
    error_log logs/publish.tf56.error.com.log;
    autoindex on;
    root /home/jchan/b2b/publish/frontB2B_v1.2.2/;
    index index.html;

    location /treasureWeb {
        proxy_pass http://10.7.28.14;
    }
}

# server for mpa
server {
    listen 80;
    server_name mpa.tf56.com;
    access_log logs/mpa.tf56.com.access.log;
    error_log logs/mpa.tf56.com.error.log;
    autoindex on;
    root /home/jchan/b2b/mpa_v1.2.2/dist;
    index index/index.html;
   
    location /treasureWeb {
        proxy_pass http://10.7.28.14;
    }
}
