CREATE ROLE "snapproxy-user" LOGIN CREATEROLE PASSWORD 'Sandia4you';

CREATE DATABASE "snapproxy-db" OWNER "snapproxy-user";

\connect "snapproxy-db"

CREATE EXTENSION "btree_gist";
