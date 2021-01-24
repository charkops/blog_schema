#!/bin/bash

# Backup db
docker exec blogschema_db_1 /usr/bin/mysqldump -u root --password=password db > backup.sql