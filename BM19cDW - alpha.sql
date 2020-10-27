
/* Create PDB */
CREATE PLUGGABLE DATABASE demopdb ADMIN USER demodm IDENTIFIED BY VIKINGking01_#;

/* Open Database */
ALTER DATABASE OPEN;

/* Alter session to create user */

ALTER SESSION SET CONTAINER = demopdb;

/* Create user */
CREATE USER user1 IDENTIFIED BY "VIKINGking01_#";


/* Grant user privileges */
/* Grant create */
GRANT CREATE SESSION TO user1 CONTAINER=CURRENT;

GRANT CREATE TABLE, CREATE VIEW, CREATE PROCEDURE, CREATE SEQUENCE TO user1;

GRANT CONNECT TO user1;

ALTER USER user1 QUOTA UNLIMITED ON USERS ;

/* Check tablespace */
SELECT tablespace_name FROM dba_tablespaces;


