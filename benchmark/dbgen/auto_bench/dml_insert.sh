#!/bash/bin
timestamp=$(date +"%m_%d_%T")

	echo "keymanager starting..."
	sh keymanager2.sh
	echo "Success keymanager init"
	echo "Start Benchmarking..."
	{ time (psql -d test -a -f /tmp/benchmark_mysql/insert_10_A.sql) } 2> /bench_result/insert_$timestamp.txt

reboot
