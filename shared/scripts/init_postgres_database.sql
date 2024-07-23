CREATE USER airflow WITH PASSWORD 'airflow' CREATEDB;
CREATE DATABASE airflow
    WITH 
    OWNER = airflow
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
GRANT ALL PRIVILEGES ON DATABASE airflow TO airflow;
GRANT ALL PRIVILEGES ON DATABASE airflow TO postgres;
CREATE USER minio WITH PASSWORD 'minio' CREATEDB;
CREATE DATABASE minio    
    WITH 
    OWNER = minio
    ENCODING = 'UTF8'
    LC_COLLATE = 'en_US.utf8'
    LC_CTYPE = 'en_US.utf8'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1;
GRANT ALL PRIVILEGES ON DATABASE minio TO minio;
GRANT ALL PRIVILEGES ON DATABASE minio TO postgres;
-- CREATE USER druid WITH PASSWORD 'druid' CREATEDB;
-- CREATE DATABASE druid    
--     WITH 
--     OWNER = druid
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.utf8'
--     LC_CTYPE = 'en_US.utf8'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;
-- GRANT ALL PRIVILEGES ON DATABASE druid TO druid;
-- GRANT ALL PRIVILEGES ON DATABASE druid TO postgres;
-- CREATE USER hive WITH PASSWORD 'hive' CREATEDB;
-- CREATE DATABASE metastore    
--     WITH 
--     OWNER = hive
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.utf8'
--     LC_CTYPE = 'en_US.utf8'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;
-- GRANT ALL PRIVILEGES ON DATABASE metastore TO hive;
-- GRANT ALL PRIVILEGES ON DATABASE hive TO postgres;
-- CREATE USER superset WITH PASSWORD 'superset' CREATEDB;
-- CREATE DATABASE superset    
--     WITH 
--     OWNER = superset
--     ENCODING = 'UTF8'
--     LC_COLLATE = 'en_US.utf8'
--     LC_CTYPE = 'en_US.utf8'
--     TABLESPACE = pg_default
--     CONNECTION LIMIT = -1;
-- GRANT ALL PRIVILEGES ON DATABASE superset TO superset;
-- GRANT ALL PRIVILEGES ON DATABASE superset TO postgres;