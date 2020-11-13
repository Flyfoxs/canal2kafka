
create user canal@'%' identified by 'canal';
grant select,replication slave,replication client on *.* to canal@'%';



SET NAMES utf8;

CREATE database IF NOT EXISTS mytest;
USE mytest;

DROP TABLE IF EXISTS user ;
CREATE TABLE user( 
    id tinyint,  
    name VARCHAR(10), 
    role_id VARCHAR(10),  
    c_time VARCHAR(10), 
    test1 VARCHAR(10),  
    primary key(id) 
    );
    