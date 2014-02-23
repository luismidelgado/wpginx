server {
    # Configure the domain that will run WordPress
    server_name mysite.com;
    listen 80 deferred;
    port_in_redirect off;
    server_tokens off;
    autoindex off;
 
 
    # WordPress needs to be in the webroot of /var/www/ in this case
    root /var/www/mysite.com/public_html;
 
