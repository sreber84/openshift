FROM registry.redhat.io/ubi8/openjdk-11:1.10-10
MAINTAINER Simon Reber <sreber@redhat.com>

USER root

RUN microdnf -y install glibc-locale-source
RUN microdnf -y install glibc-langpack-de glibc-langpack-en
RUN localedef -i de_DE -f UTF-8 de_DE.UTF-8

COPY foo /root
