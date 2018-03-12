drop table if exists copy1;
drop table if exists encxx;
drop table if exists enco;
drop table if exists deco;
drop table if exists encoo;

create table copy1(name char(20), adds varchar(30), bi binary(20));
insert into copy1 values('kim', 'Seoul, Korea', 'copy_bi');

CREATE TABLE encxx(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15), adds_enc varchar(20));
insert into encxx values('2017-01-01','DAmoQA', 1,'kim', 'Seoul, Korea','lee tester', 'seoul, Korea');

CREATE TABLE enco(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15), adds_enc varchar(20));
insert into enco values('2017-01-01','DAmoQA', 1,'kim', 'Seoul, Korea','lee tester', 'seoul, Korea');

CREATE TABLE deco(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15), adds_enc varchar(20));
insert into deco values('2017-01-01','DAmoQA', 1,'kim', 'Seoul, Korea','lee tester', 'seoul, Korea');

CREATE TABLE encoo(DATE1 date, varchart1 varchar(40), no int, name char(15), adds varchar(20), name_enc char(15), adds_enc varchar(20));
insert into encoo values ('2017-01-01','DAmoQA', 1,'kim', 'Seoul, Korea','lee tester', 'seoul, Korea');


select * from encxx;
call mysql.damo_table_migration('test', 'encxx');
select * from encxx;

select * from enco;
call mysql.damo_table_migration('test', 'enco');
select * from enco;

select * from deco;
call mysql.damo_table_migration('test', 'deco');
select * from deco;

select * from encoo;
call mysql.damo_table_migration('test', 'encoo');
select * from encoo;
