drop table if exists function;
create table function(no int, word char(20)) engine='InnoDB';
insert into function values(1,'abcdefghijklmnopqrst');
insert into function values(2,'AbCdEfGhIjKlMnOpQrSt');
insert into function values(3,'          klmnopqrst');
insert into function values(4,'abcdefghij          ');
insert into function values(5,'     fghijklmno     ');
insert into function values(6,'Seoul, Korea');
insert into function values(7,'Busan, Korea');
insert into function values(8,'Tokyo, Japan');
insert into function values(9,'New York, America');
insert into function values(10,'Berlin, Germany');

call mysql.damo_table_migration('test','function');
