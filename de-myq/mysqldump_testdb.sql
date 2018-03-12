drop table if exists lemon;								
create table lemon								
	(							
		pno1 char(10),						
		pno2 varchar(20),						
		pno3 varbinary(30),						
		no1 int(3),						
		no2 tinyint(3),						
		no3 smallint(4),						
		no4 mediumint(5),						
		no6 bigint(12),						
		no7 integer(16),						
		dt date,						
		dte datetime,						
		dtstamp timestamp,						
		dt_time time,						
		dt_year year,						
		monja1 TINYTEXT,						
		monja2 TEXT,						
		monja3 MEDIUMTEXT,						
		monja4 LONGTEXT,						
		ba1 TINYBLOB, 						
		ba2 BLOB,						
		ba3 MEDIUMBLOB, 						
		ba4 LONGBLOB,						
		no_fl float,						
		no_do double						
		);						
								
	insert into lemon values('char', 'varchar', '1', 1, 1, 1,1, 1,1, '1000-01-01', '1000-01-01 00:00:00','2000-01-01 00:00:00','12:59:59', '1999','a', 'AB','ABc', 'xyzdfeD', 'd', 'sfjal', '臾몃Ц臾몃Ц臾몃Цdmsnf', 'sfjalsjflsfjsdaf', -3.402823466E+38,-1.79769313486231517E+308); 							
								
		drop table if exists lemonh;						
		create table lemonh						
			(					
				pno1 char(10),				
				pno2 varchar(20),				
				pno3 varbinary(30),				
				no1 int(3),				
				no2 tinyint(3),				
				no3 smallint(4),				
				no4 mediumint(5),				
				no6 bigint(12),				
				no7 integer(16),				
				dt date,				
				dte datetime,				
				dtstamp timestamp,				
				dt_time time,				
				dt_year year,				
				monja1 TINYTEXT,				
				monja2 TEXT,				
				monja3 MEDIUMTEXT,				
				monja4 LONGTEXT,				
				ba1 TINYBLOB, 				
				ba2 BLOB,				
				ba3 MEDIUMBLOB, 				
				ba4 LONGBLOB,				
				no_fl float,				
				no_do double				
				);				
								
			insert into lemonh values('char', 'varchar', '1', 1, 1, 1,1, 1,1, '1000-01-01', '1000-01-01 00:00:00','2000-01-01 00:00:00','12:59:59', '1999','a', 'AB','ABc', 'xyzdfeD', 'd', 'sfjal', '臾몃Ц臾몃Ц臾몃Цdmsnf', 'sfjalsjflsfjsdaf', -3.402823466E+38,-1.79769313486231517E+308); 					
								
				drop table if exists lepb;				
				create table lepb				
					(			
						pno2 varchar(20),		
						pno3 varbinary(30));		
								
					insert into lepb values('varchar', '10101');			
								
						drop table if exists leph;		
						create table leph		
							(	
								pno2 varchar(20),
								pno3 varbinary(30));
								
							insert into leph values('varchar', '10101');	
								
call mysql.damo_table_migration('test', 'lemon');								
call mysql.damo_table_migration('test', 'lemonh');								
call mysql.damo_table_migration('test', 'lepb');								
call mysql.damo_table_migration('test', 'leph');								
