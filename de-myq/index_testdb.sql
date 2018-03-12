use test

drop table if exists customer;
CREATE TABLE customer(
  CUST_NO         VARCHAR(15)                  NOT NULL,
  CUST_NAME       VARCHAR(20)                  NOT NULL,
  SOCIAL_NO       VARCHAR(13),
  SEX             VARCHAR(6),
  ADDRESS         VARCHAR(512),
  PHONE_NUM       VARCHAR(14),
  URL             VARCHAR(100),
  COMPANY_NAME    VARCHAR(15),
  DEPT_NAME       VARCHAR(15),
  INCOMING        VARCHAR(6),
  CARD_NO         VARCHAR(20),
  POINT        int                          NOT NULL,
  IDENTI_NUMBER   VARCHAR(4)
);
INSERT INTO customer VALUES(
  'CUST_NO1', 'CUST_NAME','SOCIAL_NO','SEX','ADDRESS', 'PHONE_NUM','URL',   'COMPANY_NAME',  'DEPT_NAME', 'ING','CARD_NO',   1,  'ID1'  
);
INSERT INTO customer VALUES(
  'CUST_NO1', 'CUST_NAME','SOCIAL_NO','SEX','ADDRESS', 'PHONE_NUM','URL',   'COMPANY_NAME',  'DEPT_NAME', 'ING','CARD_NO',   2, 'ID2'  
);
INSERT INTO customer VALUES(
  'CUST_NO1', 'CUST_NAME','SOCIAL_NO','SEX','ADDRESS', 'PHONE_NUM','URL',   'COMPANY_NAME',  'DEPT_NAME', 'INCG','CARD_NO',   3,  'ID3'  
);
alter table customer add index cut_indx (IDENTI_NUMBER);

drop table if exists customer2;
CREATE TABLE customer2(
  CUST_NO         VARCHAR(15)                  NOT NULL,
  CUST_NAME       VARCHAR(20)                  NOT NULL,
  SOCIAL_NO       VARCHAR(13),
  SEX             VARCHAR(6),
  ADDRESS         VARCHAR(512),
  PHONE_NUM       VARCHAR(14),
  URL             VARCHAR(100),
  COMPANY_NAME    VARCHAR(15),
  DEPT_NAME       VARCHAR(15),
  INCOMING        VARCHAR(6),
  CARD_NO         VARCHAR(20),
  POINT        int                          NOT NULL,
  IDENTI_NUMBER   VARCHAR(4),
 INDEX (IDENTI_NUMBER) 
);
INSERT INTO customer2 VALUES(
  'CUST_NO1', 'CUST_NAME','SOCIAL_NO','SEX','ADDRESS', 'PHONE_NUM','URL',   'COMPANY_NAME',  'DEPT_NAME', 'ING','CARD_NO',   1,  'ID1'  
);
INSERT INTO customer2 VALUES(
  'CUST_NO1', 'CUST_NAME','SOCIAL_NO','SEX','ADDRESS', 'PHONE_NUM','URL',   'COMPANY_NAME',  'DEPT_NAME', 'ING','CARD_NO',   2, 'ID2'  
);
INSERT INTO customer2 VALUES(
  'CUST_NO1', 'CUST_NAME','SOCIAL_NO','SEX','ADDRESS', 'PHONE_NUM','URL',   'COMPANY_NAME',  'DEPT_NAME', 'INCG','CARD_NO',   3,  'ID3'  
);
alter table customer2 add index cut_indx2 (IDENTI_NUMBER);


drop table if exists T_INDEX_TYPE1;
create table T_INDEX_TYPE1(
 col1 varchar(20),
 col2 varchar(20),
 col3 varchar(20),
 col4 varchar(20),
 col5 char(10)
);
ALTER TABLE T_INDEX_TYPE1 ADD INDEX(col1);
ALTER TABLE T_INDEX_TYPE1 ADD INDEX(col2);
ALTER TABLE T_INDEX_TYPE1 ADD INDEX(col3);
insert into T_INDEX_TYPE1 values ('000001', 'abcdefg', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE1 values ('000002', 'abcdefg', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE1 values ('000003', 'abcdefg', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE1 values ('000004', 'abcdefg', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE1 values ('000005', 'abcdefg', 'rrrrrrrr', '', '0000000005');

drop table if exists T_INDEX_TYPE2;
create table T_INDEX_TYPE2(
 col1 varchar(20),
 col2 varchar(20),
 col3 varchar(20),
 col4 varchar(20),
 col5 char(10)
);
ALTER TABLE T_INDEX_TYPE2 ADD PRIMARY KEY(col1);
insert into T_INDEX_TYPE2 values ('000001', 'abcdefg', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE2 values ('000002', 'abcdefg', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE2 values ('000003', 'abcdefg', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE2 values ('000004', 'abcdefg', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE2 values ('000005', 'abcdefg', 'rrrrrrrr', '', '0000000005');

drop table if exists T_INDEX_TYPE7;
create table T_INDEX_TYPE7(
 col1 varchar(20),
 col2 varchar(20),
 col3 varchar(20),
 col4 varchar(20),
 col5 char(10)
);
ALTER TABLE T_INDEX_TYPE7 ADD UNIQUE KEY(col1);
insert into T_INDEX_TYPE7 values ('000001', 'abcdefg', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE7 values ('000002', 'abcdefg', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE7 values ('000003', 'abcdefg', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE7 values ('000004', 'abcdefg', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE7 values ('000005', 'abcdefg', 'rrrrrrrr', '', '0000000005');

drop table if exists T_INDEX_TYPE5;
create table T_INDEX_TYPE5(
 col1 varchar(10) not null,
 col2 varchar(50) CHARACTER SET utf8 COLLATE utf8_bin,
 col3 varchar(10),
 col4 varchar(10),
 col5 char(10)
);
ALTER TABLE T_INDEX_TYPE5 ADD INDEX(col1);
ALTER TABLE T_INDEX_TYPE5 ADD INDEX(col2);
insert into T_INDEX_TYPE5 values ('000001', '가나다라마바사', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE5 values ('000002', '가나다라마바사', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE5 values ('000003', '가나다라마바사', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE5 values ('000004', '도레미', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE5 values ('000005', '가나다라마바사', 'rrrrrrrr', '', '0000000005');

drop table if exists T_INDEX_TYPE3;
create table T_INDEX_TYPE3(
 col1 varchar(20) not null,
 col2 varchar(20),
 col3 varchar(20),
 col4 varchar(20),
 col5 char(20)
);
ALTER TABLE T_INDEX_TYPE3 ADD INDEX(col1, col2);
insert into T_INDEX_TYPE3 values ('000001', 'abcdefg', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE3 values ('000002', 'abcdefg', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE3 values ('000003', 'abcdefg', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE3 values ('000004', 'abcdefg', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE3 values ('000005', 'abcdefg', 'rrrrrrrr', '', '0000000005');

drop table if exists T_INDEX_TYPE4;
create table T_INDEX_TYPE4(
 col1 varchar(20) not null,
 col2 varchar(20),
 col3 varchar(20),
 col4 varchar(20),
 col5 char(20)
);
ALTER TABLE T_INDEX_TYPE4 ADD INDEX(col1, col2);
insert into T_INDEX_TYPE4 values ('000001', 'abcdefg', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE4 values ('000002', 'abcdefg', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE4 values ('000003', 'abcdefg', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE4 values ('000004', 'abcdefg', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE4 values ('000005', 'abcdefg', 'rrrrrrrr', '', '0000000005');

drop table if exists T_INDEX_TYPE6;
create table T_INDEX_TYPE6(
 col1 varchar(20) not null,
 col2 varchar(20),
 col3 varchar(20),
 col4 varchar(20),
 col5 char(20)
);
ALTER TABLE T_INDEX_TYPE6 ADD INDEX(col1, col2);
insert into T_INDEX_TYPE6 values ('000001', 'abcdefg', 'rrrrrrrr', '', '0000000001');
insert into T_INDEX_TYPE6 values ('000002', 'abcdefg', 'rrrrrrrr', '', '0000000002');
insert into T_INDEX_TYPE6 values ('000003', 'abcdefg', 'rrrrrrrr', '', '0000000003');
insert into T_INDEX_TYPE6 values ('000004', 'abcdefg', 'rrrrrrrr', '', '0000000004');
insert into T_INDEX_TYPE6 values ('000005', 'abcdefg', 'rrrrrrrr', '', '0000000005');

drop table if exists tb_test;
create table tb_test(
 email varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
 mem_idx int unsigned NOT NULL DEFAULT '0',
 user_nm varchar(80) NOT NULL,
 PRIMARY KEY (email, mem_idx),
 KEY ix01_surveymail_utf8 (mem_idx),
 KEY ix02_surveymail_utf8 (user_nm)
);
insert into tb_test values ('a@naver.com', 1, 'a');
insert into tb_test values ('b@naver.com', 2, 'b');
insert into tb_test values ('c@naver.com', 3, 'c');

drop table if exists tb_test1;
create table tb_test1(
 email varchar(80) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
 mem_idx int unsigned NOT NULL DEFAULT '0',
 user_nm varchar(80) NOT NULL,
 PRIMARY KEY (email),
 KEY ix01_surveymail_utf8 (mem_idx)
);
insert into tb_test1 values ('a@naver.com', 1, 'a');
insert into tb_test1 values ('bb@naver.com', 2, 'bb');
insert into tb_test1 values ('c@naver.com', 3, 'c');

call mysql.damo_table_migration('test', 'T_INDEX_TYPE1');
call mysql.damo_table_migration('test', 'T_INDEX_TYPE2');
call mysql.damo_table_migration('test', 'T_INDEX_TYPE3');
call mysql.damo_table_migration('test', 'T_INDEX_TYPE4');
call mysql.damo_table_migration('test', 'T_INDEX_TYPE5');
call mysql.damo_table_migration('test', 'T_INDEX_TYPE6');
call mysql.damo_table_migration('test', 'T_INDEX_TYPE7');
