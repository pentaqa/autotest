#!/bash/bin
timestamp=$(date +"%m_%d_%T")

	echo "keymanager starting..."
	sh keymanager.sh
	echo "Success keymanager init"
	echo "Start Benchmarking..."
	{ time (psql -d test -a -f $SQL_PATH/insert_10_A.sql) } 2> /bench_result/insert_$timestamp.txt

reboot
