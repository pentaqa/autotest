create table innodb1(no int, pno char(20)) engine='InnoDB';
insert into innodb1 values(1, 'aaaaaa');

create table myisam1(no int, pno char(20)) engine='MyISAM';
insert into myisam1 values(1, 'aa1111bbbbbbb3333');

create table aria1(no int, pno char(20)) engine='Aria';
insert into aria1 values(1, 'aa1111bbbbbbb3333');

call mysql.damo_table_migration('test','innodb1');
call mysql.damo_table_migration('test','myisam1');
call mysql.damo_table_migration('test','aria1');
