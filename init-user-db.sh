#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "$POSTGRES_USER" --dbname "$POSTGRES_DB" <<-EOSQL
	CREATE USER fastapi WITH PASSWORD 'topsecret';
	CREATE DATABASE fastapi_first_project;
	GRANT ALL PRIVILEGES ON DATABASE fastapi_first_project TO fastapi;
	ALTER DATABASE fastapi_first_project OWNER TO fastapi;
EOSQL
