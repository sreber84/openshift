FROM registry.access.redhat.com/ubi7:latest
MAINTAINER Simon Reber <sreber@redhat.com>

RUN yum-config-manager --enable rhel-7-server-rpms > /dev/null && \
    yum -y --setopt=tsflags=nodocs update && \
    yum -y --setopt=tsflags=nodocs install tomcat && \
    yum clean all

ENV CATALINA_HOME /usr/local/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH
WORKDIR $CATALINA_HOME

EXPOSE 8080
CMD ["server.sh", "start"]
