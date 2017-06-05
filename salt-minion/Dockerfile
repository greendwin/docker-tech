# saltstack minion container with docker installed

FROM ubuntu:14.04
MAINTAINER Evgeniy A. Cymbalyuk <cimbaluk@saber3d.ru>

# 
# Install common apps
#
# skip:
#   linux-image-extra-$(uname -r)
#   linux-image-extra-virtual

RUN set -ex \
    && apt-get update \
    && apt-get install -y \
        curl \
        apt-transport-https \
        ca-certificates \
        software-properties-common \
    && (curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -) \
    && (curl -fsSL https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -) \
    && echo "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" > /etc/apt/sources.list.d/saltstack.list \
    && add-apt-repository \
        "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
        $(lsb_release -cs) stable" \
    && apt-get update \
    && apt-get install -y \
        salt-minion \
        docker-ce \
    && apt-get autoremove -y \
    && apt-get clean

# volumes
VOLUME /etc/salt/minion.d

# add run file
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# entrypoint
CMD /entrypoint.sh
