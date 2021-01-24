#!/bin/bash

docker exec -i blogschema_db_1 /usr/bin/mysqldump -u example_user --password=password db < backup.sql

