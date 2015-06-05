# Redis Dockerfile in CentOS 7 image 

This repository contains a Dockerfile to build a Docker Image for Redis in CentOS 7.

[![Build Status](https://travis-ci.org/zokeber/docker-redis.svg?branch=master)](https://travis-ci.org/zokeber/docker-redis)

## Base Docker Image

* [zokeber/centos](https://registry.hub.docker.com/u/zokeber/centos/)

## Usage


### Installation

1. Install [Docker](https://www.docker.com/).

2. You can download automated build from public Docker Hub Registry:

```
docker pull zokeber/redis:latest
```

**Another way: build from Github**

To create the image zokeber/redis, clone this repository and execute the following command on the docker-redis folder:

`docker build -t zokeber/redis:latest .`

Another alternatively, you can build an image directly from Github:

`docker build -t="zokeber/redis:latest" github.com/zokeber/docker-redis`


### Create and running a container

**Create container:**

```
docker create -it -p 6379:6379 --name container-redis zokeber/redis
```

**Start container:**

```
docker start container-redis
```


### Connection methods:

**Redis client:**

`docker exec -it container-redis redis-cli`

**Bash:**

`docker exec -it container-redis bash`


### Upgrading

Stop the currently running image:

```
docker stop container-redis
```


Update the docker image:

```
docker pull zokeber/redis:latest
```
