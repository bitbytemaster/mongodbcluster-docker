# Dockerize Mongodb cluster env
#
# VERSION 0.1

FROM ubuntu:14.04
MAINTAINER Richard Chen <richard.chen@daemonrob.com>

# Installation:
# Import MongoDB public GPG key AND create a MongoDB list file
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
RUN echo "deb http://repo.mongodb.org/apt/ubuntu "$(lsb_release -sc)"/mongodb-org/3.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Update apt-get sources AND install MongoDB
RUN apt-get update && apt-get install -y mongodb-org

EXPOSE 27017
EXPOSE 27018
EXPOSE 27019

ENTRYPOINT ["/etc/mongodb/start_cluster.sh"]
