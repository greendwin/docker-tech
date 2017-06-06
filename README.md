# Docker With Salt Distribution

There is an experiment on building automated provision system based Docker and Saltstack.
The main idea is to take clean machines with preinstalled `docker`, prepare it with provided `salt` images
and make further installation based only on docker containers keeping initial machine clean
(i.e. without direct instalations into host machine).

## List of images

This repo provides several images that could be used for further deployment:

 * `salt-master` - salt-master service on ubuntu 14.04
 * `salt-minion` - salt-minion service with installed docker
 * `docker` - docker-in-docker service on ubuntu 14.04

## Running example setup

On Windows machine you should first startup virtual machine using `vagrant`.

    vagrant up

In created machine or your host Linux machine you can startup master & minion containers:

	docker-compose up -d

Test connection to minion and provision minion machine:

	docker-compose exec master bash
	$ salt '*' test.ping
	$ salt '*' state.highstate

## Development startup

To start development version (e.g. with altered docker images) you can use development overrides in `docker-compose.develop.yml`:

    ./compose-develop.sh

or you can do this manually:

    docker-compose                     \
        -f docker-compose.yml          \
        -f docker-compose.develop.yml  \
        up -d --build
