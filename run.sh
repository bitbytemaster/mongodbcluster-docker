$docker run --name mongodb-cluster -p 27017:27017 -p 27018:27018 -p 27019:27019 -v /home/docker/mongodb/cluster/:/etc/mongodb/ -d daocloud.io/tigerich/mongodbcluster:master-init
