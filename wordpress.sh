#/bin/bash

# Container vars
name=wordpress
host_volume=./wp_volume
container_volume=/var/www/html/
port=8080

# DB vars
db_host=mysql:3306
db_user=wordpress
db_pass=admin
db_name=wordpress

docker run \
	-v $host_volume:$container_volume \
	--name $name \
	-e WORDPRESS_DB_HOST=$db_host \
	-e WORDPRESS_DB_USER=$db_user \
	-e WORDPRESS_DB_PASSWORD=$db_pass \
	-e WORDPRESS_DB_NAME=$db_name \
	--link mysql \
	-p $port:80 \
	-d wordpress
