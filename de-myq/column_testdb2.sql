drop table if exists TESTPART2;

create table TESTPART2
(
type_cha char(10),
type_varcha varchar(20),
type_varbi varbinary(30),
type_int int(3),
tiny_no tinyint(3),
smallint_no smallint(4),
mediumint_no mediumint(5),
bigint_no bigint(12),
intger_no integer(16),
dt date,
dte datetime,
dtstamp timestamp,
dt_time time,
dt_year year,
monja1 MEDIUMTEXT, monja2 MEDIUMTEXT, 
monja3 LONGBLOB, monja4 LONGTEXT,
no_fl float,
no_do double
);

insert into TESTPART2 values('char', 'varchar', 'varbinary', 1, 1, 1,1, 1,1, 
'1000-01-01', '1000-01-01 00:00:00','2000-01-01 00:00:00','000:59:59', '1999',
'asdf', 'asdf','asdf', 'sfjalsjflsfjsdaf', 
-3.402823466E+38,-1.79769313486231517E+308);  


call mysql.damo_table_migration('test', 'TESTPART2');
