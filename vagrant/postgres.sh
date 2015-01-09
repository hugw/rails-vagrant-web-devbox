#!/bin/bash

echo 'Installing Postgres...'

apt-get install postgresql postgresql-contrib libpq-dev -y -q
sudo -u postgres psql -c "CREATE USER root SUPERUSER INHERIT createdb createrole;"
sudo -u postgres psql -c "ALTER USER root PASSWORD 'root';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON ALL TABLES IN SCHEMA public TO root;"
sudo -u postgres psql -c "ALTER USER postgres PASSWORD 'postgres';"
sudo -u postgres psql -c "UPDATE pg_database SET datistemplate=false WHERE datname='template1';"
sudo -u postgres psql -c "DROP DATABASE Template1;"
sudo -u postgres psql -c "CREATE DATABASE template1 WITH owner=postgres encoding='UTF-8' lc_collate='en_US.utf8' lc_ctype='en_US.utf8' template template0;"
sudo -u postgres psql -c "UPDATE pg_database SET datistemplate=true WHERE datname='template1';";
sudo -u postgres /etc/init.d/postgresql restart

echo '...Done.'
