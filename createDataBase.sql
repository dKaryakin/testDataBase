CREATE DATABASE "testDataBase"
    WITH 
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'English_United States.1252'
    LC_CTYPE = 'English_United States.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;

GRANT CONNECT ON DATABASE "testDataBase" TO "user";

GRANT ALL ON DATABASE "testDataBase" TO postgres;

GRANT TEMPORARY, CONNECT ON DATABASE "testDataBase" TO PUBLIC;
