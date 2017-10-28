#!/bin/bash
mysql -uroot -predhat -e "show databases" | grep example_db;

if [ $? -eq 0 ]; then
	echo "$green example_db database is already present, proceeding... $reset"
else
	echo "$red example_db is not present $reset, $green Creating... $reset"
	mysql -uroot -predhat -e "create database example_db"
	echo "$green example_db has been created $reset"
fi
