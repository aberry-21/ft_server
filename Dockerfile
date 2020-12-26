FROM  debian:buster

# update pack manager and install utils
RUN apt-get -y update && apt-get -y upgrade
RUN apt-get install -y wget nginx mariadb-server openssl php7.3 php-mysql php-fpm php-pdo php-gd php-cli php-mbstring

# init nginx and MySQl
COPY ./srcs/sql_conf.sql ./tmp/sql_conf.sql
COPY ./srcs/nginx.conf /etc/nginx/sites-available/localhost
COPY ./srcs/init_server.sh ./tmp/init_server.sh
RUN sh ./tmp/init_server.sh

# init phpmyadmin and wordpress
COPY ./srcs/init_php.sh ./tmp/init_php.sh
RUN sh ./tmp/init_php.sh
COPY ./srcs/config.inc.php /var/www/html/phpmyadmin
COPY ./srcs/wp-config.php /var/www/html/wordpress
COPY ./srcs/init.sh ./tmp/init.sh
COPY ./srcs/change-autoindex.sh ./tmp/change-autoindex.sh

EXPOSE 80 443
ENTRYPOINT bash ./tmp/init.sh