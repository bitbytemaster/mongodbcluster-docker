#! /bin/bash

for i in `seq 1 3`; 
do
	redis-server /etc/redis/node$i/redis.conf
	sleep 3
done


for i in `seq 1 3`; 
do
	redis-server /etc/redis/node$i/sentinel.conf --sentinel
	sleep 3
done
