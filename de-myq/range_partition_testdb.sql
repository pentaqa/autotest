drop table if exists t_partition_rac1;
create table t_partition_rac1 (
    id int not null,
    fname varchar(30),
    lname varchar(30),
    hired date not null default '1990-01-01',
    separated date not null default '9999-12-31',
    job_code int not null,
    store_id int not null
)
partition by range columns (lname, hired, job_code)  (
    partition p0 values less than ('g', '1990-01-01', 11),
    partition p1 values less than ('m', '2000-01-01', 12),
    partition p2 values less than ('t', '2010-01-01', 13));

insert into t_partition_rac1 values(1, 'aaa', 'g', '1990-01-01', '2005-05-05', 10, 78);
insert into t_partition_rac1 values(2, 'bbb', 'g', '1990-01-01', '2005-05-05', 11, 79);
insert into t_partition_rac1 values(3, 'ccc', 'm', '2000-01-01', '2015-11-05', 12, 80);
insert into t_partition_rac1 values(4, 'ddd', 't', '2001-01-01', '2020-11-05', 13, 81);


drop table if exists t_partition_rac2;
create table t_partition_rac2 (
    id int not null,
    fname varchar(30),
    lname varchar(30),
    hired date not null default '1990-01-01',
    separated date not null default '9999-12-31',
    job_code int not null,
    store_id int not null
)
partition by range columns (lname, hired, job_code)  (
    partition p0 values less than ('g', '1990-01-01', 11),
    partition p1 values less than ('m', '2000-01-01', 12),
    partition p2 values less than ('t', '2010-01-01', 13));

insert into t_partition_rac2 values(1, 'aaa', 'g', '1990-01-01', '2005-05-05', 10, 78);
insert into t_partition_rac2 values(2, 'bbb', 'g', '1990-01-01', '2005-05-05', 11, 79);
insert into t_partition_rac2 values(3, 'ccc', 'm', '2000-01-01', '2015-11-05', 12, 80);
insert into t_partition_rac2 values(4, 'ddd', 't', '2001-01-01', '2020-11-05', 13, 81);




drop table if exists t_partition_lisc1;
create table t_partition_lisc1 (
 no int,
    first_name varchar(25),
    last_name varchar(25),
    renewal date,
 street_1 varchar(30),
    street_2 varchar(30)
)
partition by list columns(renewal) (
    partition pweek_1 values in('2010-02-01', '2010-02-02', '2010-02-03','2010-02-04', '2010-02-05', '2010-02-06', '2010-02-07'),
    partition pweek_2 values in('2010-02-08', '2010-02-09', '2010-02-10','2010-02-11', '2010-02-12', '2010-02-13', '2010-02-14'),
    partition pweek_3 values in('2010-02-15', '2010-02-16', '2010-02-17','2010-02-18', '2010-02-19', '2010-02-20', '2010-02-21'),
    partition pweek_4 values in('2010-02-22', '2010-02-23', '2010-02-24','2010-02-25', '2010-02-26', '2010-02-27', '2010-02-28'));

insert into t_partition_lisc1 values(1, 'lee', 'stest1231', '2010-02-01', 1, 1);
insert into t_partition_lisc1 values(2, 'lee', 'jtest444', '2010-02-02', 1, 1);
insert into t_partition_lisc1 values(4, 'lee', 'sqa1313', '2010-02-09', 1, 1);
insert into t_partition_lisc1 values(8, 'lee', 'itest777', '2010-02-14', 1, 1);
insert into t_partition_lisc1 values(15, 'lee', 'itest777', '2010-02-16', 1, 1);
insert into t_partition_lisc1 values(13, 'lee', 'itest777', '2010-02-21', 1, 1);
insert into t_partition_lisc1 values(20, 'lee', 'itest777', '2010-02-22', 1, 1);
insert into t_partition_lisc1 values(17, 'lee', 'itest777', '2010-02-24', 1, 2);
insert into t_partition_lisc1 values(7, 'lee', 'itest777', '2010-02-27', 1, 2);

drop table if exists t_partition_lisc2;
create table t_partition_lisc2 (
 no int,
    first_name varchar(25),
    last_name varchar(25),
    renewal date,
 street_1 varchar(30),
    street_2 varchar(30)
)
partition by list columns(renewal) (
    partition pweek_1 values in('2010-02-01', '2010-02-02', '2010-02-03','2010-02-04', '2010-02-05', '2010-02-06', '2010-02-07'),
    partition pweek_2 values in('2010-02-08', '2010-02-09', '2010-02-10','2010-02-11', '2010-02-12', '2010-02-13', '2010-02-14'),
    partition pweek_3 values in('2010-02-15', '2010-02-16', '2010-02-17','2010-02-18', '2010-02-19', '2010-02-20', '2010-02-21'),
    partition pweek_4 values in('2010-02-22', '2010-02-23', '2010-02-24','2010-02-25', '2010-02-26', '2010-02-27', '2010-02-28'));

insert into t_partition_lisc2 values(1, 'lee', 'stest1231', '2010-02-01', 1, 1);
insert into t_partition_lisc2 values(2, 'lee', 'jtest444', '2010-02-02', 1, 1);
insert into t_partition_lisc2 values(4, 'lee', 'sqa1313', '2010-02-09', 1, 1);
insert into t_partition_lisc2 values(8, 'lee', 'itest777', '2010-02-14', 1, 1);
insert into t_partition_lisc2 values(15, 'lee', 'itest777', '2010-02-16', 1, 1);
insert into t_partition_lisc2 values(13, 'lee', 'itest777', '2010-02-21', 1, 1);
insert into t_partition_lisc2 values(20, 'lee', 'itest777', '2010-02-22', 1, 1);
insert into t_partition_lisc2 values(17, 'lee', 'itest777', '2010-02-24', 1, 2);
insert into t_partition_lisc2 values(7, 'lee', 'itest777', '2010-02-27', 1, 2);

call mysql.damo_table_migration('test', 't_partition_rac1');
call mysql.damo_table_migration('test', 't_partition_rac2');
call mysql.damo_table_migration('test', 't_partition_lisc1');
call mysql.damo_table_migration('test', 't_partition_lisc2');
