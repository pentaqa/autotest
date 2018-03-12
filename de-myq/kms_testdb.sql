drop table if exists kms1;
create table kms1(no int, pno varchar(20));
insert into kms1 values(1, 'rose');
insert into kms1 values(2, 'gold');

drop table if exists kms2;
create table kms2(no int, pno varchar(20));
insert into kms2 values(1, 'rosek');
insert into kms2 values(2, 'goldk');

drop table if exists kms3;
create table kms3(no int, pno varchar(20));
insert into kms3 values(1, 'pingugu');
insert into kms3 values(2, 'guruguru');

drop table if exists kms4;
create table kms4(no int, pno varchar(20));
insert into kms4 values(1, 'pingugu');
insert into kms4 values(2, 'guruguru');
insert into kms4 values(2, 'guruguru');

drop table if exists kms5;
create table kms5(no int, pno varchar(20));
insert into kms5 values(1, 'pingugu');
insert into kms5 values(2, 'guruguru');
insert into kms5 values(3, 'love');
insert into kms5 values(4, 'too young');
insert into kms5 values(5, 'too DIE');

drop table if exists kms6;
create table kms6(no int, pno varchar(20));
insert into kms6 values(6, 'too LIVE');
insert into kms6 values(7, 'too FAST');

drop table if exists kms7;
create table kms7(no int, pno varchar(20));
insert into kms7 values(6, 'tooLIVE');
insert into kms7 values(7, 'tooFAST');

drop table if exists kms8;
create table kms8(no int, pno varchar(20));
insert into kms8 values(6, 'tooLIVE');
insert into kms8 values(7, 'tooFAST');

drop table if exists kms9;
create table kms9(no int, pno varchar(20));
insert into kms9 values(6, 'ali');

drop table if exists kms10;
create table kms10(no int, pno varchar(20));
insert into kms10 values(1, 'pingugu');

drop table if exists kms11;
create table kms11(no int, pno varchar(20));
insert into kms11 values(1, 'pingugu');

call mysql.damo_table_migration('test', 'kms1');
call mysql.damo_table_migration('test', 'kms2');
call mysql.damo_table_migration('test', 'kms3');
call mysql.damo_table_migration('test', 'kms4');
call mysql.damo_table_migration('test', 'kms5');
call mysql.damo_table_migration('test', 'kms6');
call mysql.damo_table_migration('test', 'kms7');
call mysql.damo_table_migration('test', 'kms8');
call mysql.damo_table_migration('test', 'kms9');
call mysql.damo_table_migration('test', 'kms10');
call mysql.damo_table_migration('test', 'kms11');
