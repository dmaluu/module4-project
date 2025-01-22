CREATE ROLE postgres WITH SUPERUSER LOGIN PASSWORD 'postgres';
CREATE ROLE ftsolutionadmin WITH LOGIN PASSWORD 'ftsolution';
CREATE DATABASE ftsolution_db;
GRANT ALL PRIVILEGES ON DATABASE ftsolution_db TO ftsolutionadmin;