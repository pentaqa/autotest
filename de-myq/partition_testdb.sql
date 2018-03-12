drop table if exists t_partition_range1;
drop table if exists t_partition_range1_imsi;
create table t_partition_range1(
 xdate int(8) default 0,
 xhour varchar(2) not null default '00',
 tag1 varchar(100) not null default '',
 tag2 varchar(300) not null default '',
 val int(10) unsigned not null default '0',
 key ndx_xdate (xdate),
 key ndx_xhour (xhour),
 key ndx_tag1 (tag1),
 key ndx_tag2 (tag2)
 )  partition by range (xdate)
 (partition p201003 values less than (20100400),
 partition p201004 values less than (20100500),
 partition p201005 values less than (20100600),
 partition p201006 values less than (20100700));
 
insert into t_partition_range1 values(20100301, '01', 'tag1','tag2',1);
insert into t_partition_range1 values(20100301, '02', 'tag1','tag2',1);
insert into t_partition_range1 values(20100301, '03', 'tag1','tag2',1);
insert into t_partition_range1 values(20100401, '01', 'tag2','tag2',1);
insert into t_partition_range1 values(20100401, '02', 'tag2','tag2',1);
insert into t_partition_range1 values(20100401, '03', 'tag2','tag2',1);
insert into t_partition_range1 values(20100501, '01', 'tag3','tag2',1);
insert into t_partition_range1 values(20100501, '02', 'tag3','tag2',1);
insert into t_partition_range1 values(20100501, '03', 'tag3','tag2',1);
insert into t_partition_range1 values(20100601, '01', 'tag4','tag2',1);
insert into t_partition_range1 values(20100601, '02', 'tag4','tag2',1);
insert into t_partition_range1 values(20100601, '03', 'tag4','tag2',2);


drop table if exists t_partition_range2;
drop table if exists t_partition_range2_imsi;
create table t_partition_range2(
 xdate int(8) default 0,
 xhour varchar(2) not null default '00',
 tag1 varchar(100) not null default '',
 tag2 varchar(300) not null default '',
 val int(10) unsigned not null default '0',
 key ndx_xdate (xdate),
 key ndx_xhour (xhour),
 key ndx_tag1 (tag1),
 key ndx_tag2 (tag2)
 )  partition by range (xdate)
 (partition p201003 values less than (20100400),
 partition p201004 values less than (20100500),
 partition p201005 values less than (20100600),
 partition p201006 values less than (20100700));
 
insert into t_partition_range2 values(20100301, '01', 'tag1','tag2',1);
insert into t_partition_range2 values(20100301, '02', 'tag1','tag2',1);
insert into t_partition_range2 values(20100301, '03', 'tag1','tag2',1);
insert into t_partition_range2 values(20100401, '01', 'tag2','tag2',1);
insert into t_partition_range2 values(20100401, '02', 'tag2','tag2',1);
insert into t_partition_range2 values(20100401, '03', 'tag2','tag2',1);
insert into t_partition_range2 values(20100501, '01', 'tag3','tag2',1);
insert into t_partition_range2 values(20100501, '02', 'tag3','tag2',1);
insert into t_partition_range2 values(20100501, '03', 'tag3','tag2',1);
insert into t_partition_range2 values(20100601, '01', 'tag4','tag2',1);
insert into t_partition_range2 values(20100601, '02', 'tag4','tag2',1);
insert into t_partition_range2 values(20100601, '03', 'tag4','tag2',2);


drop table if exists t_partition_hash1;
drop table if exists t_partition_hash1_imsi;
CREATE TABLE t_partition_hash1 (
    id INT NOT NULL,
    fname VARCHAR(30),
    lname VARCHAR(30),
    hired DATE NOT NULL DEFAULT '1970-01-01',
    separated DATE NOT NULL DEFAULT '9999-12-31',
    job_code INT,
    store_id INT
)
PARTITION BY HASH(id)
PARTITIONS 4;

INSERT INTO t_partition_hash1 VALUES(1, 'LEE', 'stest1231@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(2, 'LEE', 'jtest444@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(4, 'LEE', 'sQA1313@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(8, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(15, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(13, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(20, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash1 VALUES(17, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 2);


drop table if exists t_partition_hash2;
drop table if exists t_partition_hash2_IMSI;
CREATE TABLE t_partition_hash2 (
    id INT NOT NULL,
    fname VARCHAR(30),
    lname VARCHAR(30),
    hired DATE NOT NULL DEFAULT '1970-01-01',
    separated DATE NOT NULL DEFAULT '9999-12-31',
    job_code INT,
    store_id INT
)
PARTITION BY HASH(id)
PARTITIONS 4;

INSERT INTO t_partition_hash2 VALUES(1, 'LEE', 'stest1231@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(2, 'LEE', 'jtest444@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(4, 'LEE', 'sQA1313@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(8, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(15, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(13, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(20, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
INSERT INTO t_partition_hash2 VALUES(17, 'LEE', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 2);


drop table if exists t_partition_list1;
drop table if exists t_partition_list1_imsi;
create table t_partition_list1 (
    id int not null,
    fname varchar(30),
    lname varchar(30),
    hired date not null default '1970-01-01',
    separated date not null default '9999-12-31',
    job_code int,
    store_id int
)
partition by list(id)(
    partition pnorth values in (3,5,6,9,17),
    partition peast values in (1,2,10,11,19,20),
    partition pwest values in (4,12,13,14,18),
    partition pcentral values in (7,8,15,16)
);    

insert into t_partition_list1 values(1, 'lee', 'stest1231@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(2, 'lee', 'jtest444@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(4, 'lee', 'sqa1313@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(8, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(15, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(13, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(20, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list1 values(17, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 2);
insert into t_partition_list1 values(7, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 2);



drop table if exists t_partition_list2;
drop table if exists t_partition_list2_imsi;
create table t_partition_list2 (
    id int not null,
    fname varchar(30),
    lname varchar(30),
    hired date not null default '1970-01-01',
    separated date not null default '9999-12-31',
    job_code int,
    store_id int
)
partition by list(id)(
    partition pnorth values in (3,5,6,9,17),
    partition peast values in (1,2,10,11,19,20),
    partition pwest values in (4,12,13,14,18),
    partition pcentral values in (7,8,15,16)
);    

insert into t_partition_list2 values(1, 'lee', 'stest1231@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(2, 'lee', 'jtest444@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(4, 'lee', 'sqa1313@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(8, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(15, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(13, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(20, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_list2 values(17, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 2);
insert into t_partition_list2 values(7, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 2);


drop table if exists t_partition_key1;
drop table if exists t_partition_key1_imsi;
create table t_partition_key1 (
    id int not null,
    fname varchar(30),
    lname varchar(30),
    hired date not null default '1970-01-01',
    separated date not null default '9999-12-31',
    job_code int,
    store_id int
)
partition by key(id)
partitions 4;

insert into t_partition_key1 values(1, 'lee', 'stest1231@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(2, 'lee', 'jtest444@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(4, 'lee', 'sqa1313@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(8, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(15, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(13, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(20, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key1 values(17, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);


drop table if exists t_partition_key2;
drop table if exists t_partition_key2_imsi;
create table t_partition_key2 (
    id int not null,
    fname varchar(30),
    lname varchar(30),
    hired date not null default '1970-01-01',
    separated date not null default '9999-12-31',
    job_code int,
    store_id int
)
partition by key(id)
partitions 4;

insert into t_partition_key2 values(1, 'lee', 'stest1231@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(2, 'lee', 'jtest444@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(4, 'lee', 'sqa1313@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(8, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(15, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(13, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(20, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);
insert into t_partition_key2 values(17, 'lee', 'itest777@pentasecurity.com', '1970-01-01', '9999-12-31', 1, 1);

call mysql.damo_table_migration('test', 't_partition_range1');
call mysql.damo_table_migration('test', 't_partition_range2');
call mysql.damo_table_migration('test', 't_partition_hash1');
call mysql.damo_table_migration('test', 't_partition_hash2');
call mysql.damo_table_migration('test', 't_partition_list1');
call mysql.damo_table_migration('test', 't_partition_list2');
call mysql.damo_table_migration('test', 't_partition_key1');
call mysql.damo_table_migration('test', 't_partition_key2');
