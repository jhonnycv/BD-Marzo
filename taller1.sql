CREATE BIGFILE TABLESPACE bigtbs_01
DATAFILE 'bigtbs_f1.dat'
SIZE 10M AUTOEXTEND ON;

CREATE UNDO TABLESPACE undots1
DATAFILE 'undots1_1a.f'
SIZE 10M AUTOEXTEND ON
RETENTION GUARANTEE;

CREATE TEMPORARY TABLESPACE temp_demo
TEMPFILE 'temp01.dbf' SIZE 5M AUTOEXTEND ON;


CREATE TABLESPACE TBS_01
DATAFILE 'TBS_F2.dat' SIZE 40M
ONLINE;

CREATE TABLESPACE TBS_04 DATAFILE 'file_1.f' SIZE 10M
EXTENT MANAGEMENT LOCAL UNIFORM SIZE 128K;

CREATE USER JCARDONA
identified by JCARDONA
default  tablespace SALES
quota 10M on SALES;
---------------------------

CREATE TABLESPACE THE_BEST_TEACHER
datafile 'andres martinez.dbf' size 50M
EXTENT MANAGEMENT LOCAL
SEGMENT SPACE MANAGEMENT AUTO
ONLINE;

CREATE USER dba_user
IDENTIFIED BY dba_user
DEFAULT TABLESPACE THE_BEST_TEACHER
QUOTA UNLIMITED ON THE_BEST_TEACHER; --si coloco 10M en ves de unlimited, solo permite esta cantida de registros

GRANT DBA, CONNECT TO dba_user;

CREATE TABLE AGENCIES (
    country varchar2(255),
    resort_name varchar2(255),
    number_of_days integer,
    travel_method varchar(255),
    price decimal(10,2),
    date_of_issue date,
    month varchar2(255),
    holiday_id varchar(255)
    )

select * from agencies




