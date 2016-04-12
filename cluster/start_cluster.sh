#! /bin/bash

for i in `seq 1 3`; 
do
	set p = 27016 + $i
	mongod --config /node$i/mongod.conf --logRotate reopen --logappend
	sleep 3
done
