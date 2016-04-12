#! /bin/bash

for i in `seq 1 3`; 
do
	set p = 27016 + $i
	mongod -v --port $p --db /node$i --logpath /node$i/mongod.log --logRotate reopen --logappend
	sleep 3
done
