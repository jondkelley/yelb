#!/bin/bash
set -e

psql -v ON_ERROR_STOP=1 --username "postgres" <<-EOSQL
    CREATE DATABASE yelbdatabase;
    \connect yelbdatabase;
	CREATE TABLE restaurants (
    	name        char(30),
    	count       integer,
    	PRIMARY KEY (name)
	);
	INSERT INTO restaurants (name, count) VALUES ('chicfilet', 0);
	INSERT INTO restaurants (name, count) VALUES ('whataburger', 0);
	INSERT INTO restaurants (name, count) VALUES ('carls jr', 0);
	INSERT INTO restaurants (name, count) VALUES ('culvers', 0);
EOSQL

