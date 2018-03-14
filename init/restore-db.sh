#!/bin/sh

psql -d template1 -U postgres
psql --command "CREATE USER lxdhub WITH PASSWORD 'lxdhub';"
psql --command "CREATE DATABASE lxdhub;"
psql --command "GRANT ALL PRIVILEGES ON DATABASE lxdhub to lxdhub;"
psql -U lxdhub -d lxdhub -f /tmp/restore.sql

