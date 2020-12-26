# init sql
service mysql start
mysql < ./tmp/sql_conf.sql

# init ssl
openssl req -x509 -nodes -days 365 -subj "/C=MS/ST=Moscow/L=Russia/O=aberry/OU=21School/CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/nginx_localhost.key -out /etc/ssl/nginx_localhost.crt;

# init conf nginx
ln -s /etc/nginx/sites-available/localhost /etc/nginx/sites-enabled/localhost
rm -rf /etc/nginx/sites-enabled/default
rm -rf /etc/nginx/sites-available/default