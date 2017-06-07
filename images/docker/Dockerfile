FROM ubuntu:14.04
MAINTAINER Evgeniy A. Cymbalyuk <cimbaluk@saber3d.ru>

# link: https://docs.docker.com/engine/installation/linux/ubuntu/
RUN set -ex                           \
    && BUILD_PACKAGES="               \
        apt-transport-https           \
        ca-certificates               \
        curl                          \
        software-properties-common"   \
    && apt-get update                 \
    && apt-get install -y $BUILD_PACKAGES \
    && (curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -) \
    && add-apt-repository             \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable"    \
    && apt-get update                 \
    && apt-get install -y             \
        docker-ce                     \
    && apt-get remove --purge -y      \
        $BUILD_PACKAGES               \
        $(apt-mark showauto)          \
    && rm -rf /var/lib/apt/lists/*
