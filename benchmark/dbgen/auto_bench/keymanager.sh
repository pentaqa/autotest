#!/bin/sh
PW=Qaeldkah9./

cd /damo
echo -e 'Qaeldkah9./\nQaeldkah9./\n' | ./keymanager -start 
set timeout 2
pg_ctl restart
