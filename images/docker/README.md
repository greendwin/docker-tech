# Docker on Ubuntu 14.04

A Docker image which allows you to make your services with docker-in-docker support.


## Running the Container

You can easily run the container like so:

`docker run --rm -it greendwin/docker`

To access host docker service you can share docker socket:

`docker run --rm -it -v /var/run/docker.sock:/var/run/docker.sock greendwin/docker`
