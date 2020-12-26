service nginx start
service mysql start
service php7.3-fpm start
setterm -foreground green
echo -e "\033[36m \nServices and bash start\n \033[0m"
echo -e "\033[38m \nAutoindex change: \033[0m"
echo -e "\033[38m bash tmp/change-autoindex.sh\n \033[0m"
bash