# saltstack minion container with docker installed

FROM greendwin/docker
MAINTAINER Evgeniy A. Cymbalyuk <cimbaluk@saber3d.ru>

RUN set -ex                     \
    && apt-get update           \
    && apt-get install -y       \
    && (curl -fsSL https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -) \
    && echo "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" > /etc/apt/sources.list.d/saltstack.list \
    && apt-get update           \
    && apt-get install -y       \
        salt-minion             \
        python-pip              \
    && apt-get autoremove -y    \
    && apt-get clean

# volumes
VOLUME /etc/salt/minion.d

# entrypoint
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
CMD /entrypoint.sh
