FROM openeuler/openeuler:24.03-lts

RUN yum update -y && \
    yum install -y vim
