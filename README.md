# ft_server

## How to run
`docker build -t ft_server .`\
`docker run -it --rm -p 80:80 -p 443:443 ft_server`

## Introduction
This topic is intended to introduce you to system administration. It will make you aware
of the importance of using scripts to automate your tasks. For that, you will discover
the "docker" technology and use it to install a complete web server. This server will run
multiples services: Wordpress, phpMyAdmin, and a SQL database. 

## Checklist

### General instructions

-Check if all the necessary configuration files of the server are in the folder `srcs`.\
-Check if the Dockerfile is at the root of the repository.\
-Run the "docker build ." command.

### Docker environment

-Verify if the evaluated has only one container.\
-Verify if the container is build with Debian Buster.\
-Verify if you can run the container with "docker run xxx" without problems (xxx - name container).

### Server instructions

-Verify if the evaluated used Nginx.\
-Verify if the server runs multiple services (WordPress and phpMyAdmin).\
-Verify if the server redirects to the correct website, according to the url.\
-Verify if Nginx uses the SSL protocol.\
-Verify if the server is running with an autoindex which can be deactivated when the container is launched.\

### Run website, run!

-Verify if the WordPress website runs entirely with the MySQL database. You can go to the site, log in, and watch the database.\
-Verify if the SQL database works with phpMyAdmin. You should see the WordPress tables and data.
