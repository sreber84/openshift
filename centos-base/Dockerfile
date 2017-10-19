FROM centos:7
MAINTAINER Simon Reber <sreber@redhat.com>

RUN yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install perl && \
    yum clean all

ENTRYPOINT ["/bin/bash"]
