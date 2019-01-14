FROM centos:7
ENV container docker
WORKDIR /work
SHELL [ "/bin/bash", "-c" ]
COPY NAME .
COPY VERSION .
COPY centos_nginx.sh .
RUN cat ./NAME > /etc/docker.conf \
  && printf ":" >> /etc/docker.conf \
  && cat ./VERSION >> /etc/docker.conf \
  && rm -rf VERSION NAME \
  && cat /etc/docker.conf \
  && mkdir -p /u \
  && chmod 0755 centos_nginx.sh
RUN yum -q -y updateinfo \
  && yum -q -y install pcre-devel zlib-devel openssl-devel \
       make gcc zip wget git libmaxminddb-devel \
  && yum -q -y clean all \
  && rm -rf /var/cache/yum
