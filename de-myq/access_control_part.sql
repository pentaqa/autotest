drop table if exists copy1;
drop table if exists partencxx;
drop table if exists partenco;
drop table if exists partdeco;
drop table if exists partencoo;

create table copy1(name char(20), adds varchar(30), bi binary(20));
insert into copy1 values('kim', 'Seoul, Korea', 'copy_bi');

create TABLE partencxx(date1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15), adds_enc varchar(20));
insert into partencxx values('2011-01-01','DAmoQA', 1,'kim', 'Seoul, Korea','lee tester', 'seoul, Korea');

CREATE TABLE partenco(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(120), name_enc char(15), adds_enc varchar(60));
insert into partenco values('2011-01-01','DAmoQA', 1,'kim','Seoul, Korea','lee tester','seoul, Korea');

CREATE TABLE partdeco(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15),adds_enc varchar(20));
insert into partdeco values('2017-05-05','DAmoQA', 1,'kim','Seoul, Korea','lee tester','seoul, Korea');

CREATE TABLE partencoo(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15), adds_enc varchar(20));
insert into partencoo values('2017-01-01','DAmoQA', 1,'kim','Seoul, Korea','lee tester', 'seoul, Korea');

select * from partencxx;
call mysql.damo_table_migration('test', 'partencxx');
select * from partencxx;

select * from partenco;
call mysql.damo_table_migration('test', 'partenco');
select * from partenco;

select * from partdeco;
call mysql.damo_table_migration('test', 'partdeco');
select * from partdeco;

select * from partencoo;
call mysql.damo_table_migration('test', 'partencoo');
select * from partencoo;
