#!/bin/bash

# Container vars
name=mysql
host_volume=./mysql_volume
container_volume=/var/lib/mysql
db_password=admin
port=3306

# Wordpress vars
wp_user=wordpress
wp_pass=admin
wp_database=wordpress

docker run \
        -v $host_volume:$container_volume \
        --name $name \
	-e MYSQL_ROOT_PASSWORD=$db_password \
	-e MYSQL_USER=$wp_user \
	-e MYSQL_PASSWORD=$wp_pass \
	-e MYSQL_DATABASE=$wp_database \
        -p $port:$port \
        -d mariadb

