FROM centos:7
ENV container docker
WORKDIR /work
SHELL [ "/bin/bash", "-c" ]
COPY NAME .
COPY VERSION .
RUN cat ./NAME > /etc/docker.conf \
  && printf ":" >> /etc/docker.conf \
  && cat ./VERSION >> /etc/docker.conf \
  && rm -rf VERSION NAME \
  && cat /etc/docker.conf \
  && mkdir -p /u
RUN yum -y updateinfo \
  && yum -y install pcre-devel zlib-devel openssl-devel make gcc zip wget git
