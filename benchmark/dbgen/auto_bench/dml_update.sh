#!/bash/bin
timestamp=$(date +"%m_%d_%T")

	echo "keymanager starting..."
	sh keymanager.sh
	echo "Success keymanager init"
	echo "Start Benchmarking..."
	
	{ time (psql -d test -a -f /tmp/benchmark_mysql/update_10_A.sql) } 2> /bench_result/update_$timestamp.txt

psql -d test <<EOF
DELETE FROM CUSTOMER5000 WHERE C_CUSTKEY>50000000;
\q
EOF 

psql -d test -a -f /tmp/benchmark_mysql/insert_10_A.sql
reboot
