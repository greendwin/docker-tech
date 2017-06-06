# saltstack master container

FROM ubuntu:14.04
MAINTAINER Evgeniy A. Cymbalyuk <cimbaluk@saber3d.ru>

RUN set -ex                           \
    && apt-get update                 \
    && apt-get install -y curl        \
    && (curl -fsSL https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | apt-key add -) \
    && echo "deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main" > /etc/apt/sources.list.d/saltstack.list \
    && apt-get update                 \
    && apt-get install -y salt-master \
    && apt-get autoremove -y          \
    && apt-get clean

# volumes
VOLUME /etc/salt/pki        \ 
       /var/cache/salt      \
       /var/logs/salt       \
       /etc/salt/master.d   \
       /srv/salt

# ports
EXPOSE 4505 4506

# add run file
ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# entrypoint
CMD /entrypoint.sh
