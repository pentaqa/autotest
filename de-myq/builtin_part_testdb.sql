drop table if exists pfunction;

create table pfunction(no int, word char(20)) engine='InnoDB';
insert into pfunction values(1,'abcdefghijklmnopqrst');
insert into pfunction values(2,'AbCdEfGhIjKlMnOpQrSt');
insert into pfunction values(3,'          klmnopqrst');
insert into pfunction values(4,'abcdefghij          ');
insert into pfunction values(5,'     fghijklmno     ');
insert into pfunction values(6,'Seoul, Korea');
insert into pfunction values(7,'Busan, Korea');
insert into pfunction values(8,'Tokyo, Japan');
insert into pfunction values(9,'New York, America');
insert into pfunction values(10,'Berlin, Germany');

call mysql.damo_table_migration('test','pfunction');
