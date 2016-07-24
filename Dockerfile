#
# Redis Dockerfile in CentOS 7 image
#

# Build:
# docker build -t zokeber/redis:latest .
#
# Create:
# docker create -it -p 6379:6379 --name container-redis zokeber/redis
#
# Start:
# docker start container-redis
#
# Connect with redis client
# docker exec -it container-redis redis-cli
#
# Connect bash
# docker exec -it container-redis bash


# Pull base image
FROM zokeber/centos

# Maintener
MAINTAINER Daniel Lopez Monagas <zokeber@gmail.com>

# Install MongoDB
RUN yum install epel-release -y && \
    yum update -y && \
    yum install redis -y && \
    yum clean all

# Copy config redis
ADD etc/redis.conf /etc/redis.conf

# User
USER root

# Mountable directories
VOLUME ["/var/lib/redis"]

# Set the environment variables
ENV HOME /var/lib/redis

# Working directory
WORKDIR /var/lib/redis

CMD ["/usr/bin/redis-server", "/etc/redis.conf"]

# Expose ports.
EXPOSE 6379
