# docker on ubuntu 14.04

FROM ubuntu:14.04
MAINTAINER Evgeniy A. Cymbalyuk <cimbaluk@saber3d.ru>

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
        curl \
        apt-transport-https \
        ca-certificates \
        software-properties-common \
    && (curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -) \
    && add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get install -y \
        docker-ce \
    && apt-get autoremove -y \
    && apt-get clean
